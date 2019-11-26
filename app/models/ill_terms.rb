class IllTerms

    attr_reader :sfx_request_xml, :sfx_targets

    def initialize(issn)
        build_sfx_request(issn)
        @sfx_connection = establish_sfx_connection()
    end

    def get_ill_terms
        @coral_connection = connect_to_coral_database()
        get_sfx_target_names()
        fetch_ill_terms_from_coral()
        fetch_coral_display_notes()
        fetch_coral_last_update_dates()
        fetch_coral_signature_dates()
        @sfx_targets
    end

    private

    def establish_sfx_connection
        Faraday.new(:url => Rails.application.secrets.find_text["url"]) do |faraday|
            faraday.adapter Faraday.default_adapter
        end
    end

    def connect_to_coral_database
        puts "coral call"
        if Rails.application.secrets.coral_database["password"]
            Mysql2::Client.new(
                :host => Rails.application.secrets.coral_database["host"],
                :username => Rails.application.secrets.coral_database["username"],
                :database =>  Rails.application.secrets.coral_database["database"],
                :password => Rails.application.secrets.coral_database["password"]
            )
        else
            Mysql2::Client.new(
                :host => Rails.application.secrets.coral_database["host"],
                :username => Rails.application.secrets.coral_database["username"],
                :database =>  Rails.application.secrets.coral_database["database"]
            )
        end
    end

    def get_sfx_target_names
        sfx_response = get_sfx_response()
        @sfx_targets = parse_sfx_targets(sfx_response)
    end

    # This method supplements the SFX targets with Coral license terms if those terms exist
    def fetch_ill_terms_from_coral
        @sfx_targets.keys.each do |target_name|
            target_results = get_coral_license_metadata(target_name)
            @sfx_targets[target_name][:effectiveDate] = target_results[:effectiveDate]
            @sfx_targets[target_name][:documentText] = target_results[:documentText]
            @sfx_targets[target_name][:expressionId] = target_results[:expressionId]
            @sfx_targets[target_name][:qualifier] = target_results[:qualifier]
        end
    end

    # This method finds any extra display notes for a particular SFX target
    def fetch_coral_display_notes
        @sfx_targets.keys.each do |target_name|
            if @sfx_targets[target_name][:expressionId]
                @sfx_targets[target_name][:display_note] = get_coral_display_note(@sfx_targets[target_name][:expressionId])
            end
        end
    end
    
    def fetch_coral_signature_dates
        @sfx_targets.keys.each do |target_name|
            if @sfx_targets[target_name][:expressionId]
                @sfx_targets[target_name][:signature_date] = get_coral_signature_date(target_name)
            end
        end
    end

    def fetch_coral_last_update_dates
        @sfx_targets.keys.each do |target_name|
            if @sfx_targets[target_name][:expressionId]
                @sfx_targets[target_name][:last_update_date] = get_coral_last_update_date(@sfx_targets[target_name][:expressionId])
            end
        end
    end

    def get_sfx_response
        @sfx_connection.post do |req|
            req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
            req.params['sfx.response_type'] = 'multi_obj_detailed_xml'
            req.body = 'XML=' + @sfx_request_xml.to_xml
        end
    end

    def build_sfx_request(issn)
        @sfx_request_xml = Nokogiri::XML::Document.new()
        open_url_node = create_child_node('open-url')
        object_description_node = create_child_node('object_description', open_url_node)
        object_metadata_zone_node = create_child_node('object_metadata_zone', object_description_node)
        [['sid', 'ND_license_check'],['sfx.ignore_date_threshold','1'],['genre','article'],['issn', issn],['volume', ''],['issue', ''],['year', '']].each do |node_params|
            create_child_node(node_params[0], object_metadata_zone_node, node_params[1])
        end
        @sfx_request_xml
    end

    def create_child_node(name,document_fragment=@sfx_request_xml,*content)
        node = Nokogiri::XML::Node.new(name, document_fragment)
        if content[0]
                node.content = content[0]
        end
        document_fragment.add_child(node)
        node
    end

    def parse_sfx_targets(sfx_response)
        response_xml = Nokogiri::XML(sfx_response.body)
        target_nodes = response_xml.xpath('//openurl_result//target')
        valid_targets = {}
        target_nodes.each do |target_node|
            if target_node.xpath('service')[0].content == 'getFullTxt'
                valid_targets["#{target_node.xpath('target_name')[0].content}"] = {}
                valid_targets["#{target_node.xpath('target_name')[0].content}"][:target_url] = target_node.xpath('url')[0].content
            end
        end
        valid_targets
    end
    
    def get_coral_license_metadata(valid_target_name)
        results = @coral_connection.query("SELECT E.expressionId, date_format(D.effectiveDate, '%m/%d/%Y') effectiveDate, E.documentText, Q.shortName qualifier
            FROM Document D, ExpressionType ET, SFXProvider SP,
            Expression E
                LEFT JOIN ExpressionQualifierProfile EQP ON (EQP.expressionID = E.expressionID)
                LEFT JOIN Qualifier Q ON (Q.qualifierID = EQP.qualifierID)
            WHERE D.documentId = E.documentId
            AND ET.expressionTypeId = E.expressionTypeId
            AND (D.expirationDate is null || D.expirationDate = '0000-00-00')
            AND SP.documentID = D.documentID
            AND E.productionUseInd='1'
            AND (ET.shortName = 'Interlibrary Loan (additional notes)' OR ET.shortName = 'Interlibrary Loan')
            AND SP.shortName = '#{valid_target_name}'")
        final_result = results.each[0]
        if !final_result.nil?
            final_result.transform_keys!(&:to_sym)
        else
            {:documentText => "Electronic resource ILL terms not defined. Please consider using print resource to fill ILL requests, if available."}
        end
    end

    def get_coral_last_update_date(coral_expression_id)
        results = @coral_connection.query(
            "SELECT date_format(MAX(updateDate), '%m/%d/%Y') lastUpdateDate FROM (
			    SELECT MAX(lastUpdateDate) updateDate FROM Expression WHERE ExpressionId='#{coral_expression_id}'
			    UNION
                SELECT MAX(lastUpdateDate) updateDate FROM ExpressionNote WHERE ExpressionId='#{coral_expression_id}') allDates"
        )
        results.each[0]["lastUpdateDate"]
    end

    def get_coral_signature_date(valid_target_name)
        results = @coral_connection.query(
            "SELECT date_format(MAX(signatureDate), '%m/%d/%Y') lastSignatureDate
			    FROM Signature S, Document D, SFXProvider SP
			    WHERE D.documentId = S.DocumentId
			    AND D.expirationDate is null
			    AND SP.documentID = D.documentID
			    AND SP.shortName = '#{valid_target_name}'
			    AND signatureTypeId='2'
			    GROUP BY S.documentId
			    ORDER BY 1"
        )
        if !results.nil? 
            results.each[0]["lastSignatureDate"]
        else
            return
        end
    end

    def get_coral_display_note(coral_expression_id)
        results = @coral_connection.query(
            "SELECT EN.note
                FROM ExpressionNote EN
                WHERE EN.expressionId = '#{coral_expression_id}'
                ORDER BY displayOrderSeqNumber"
        )
        all_display_notes = ''
        results.each do |note|
            all_display_notes += note["note"] + "\n"
        end
        all_display_notes
    end
end