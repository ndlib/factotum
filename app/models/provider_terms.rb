class ProviderTerms

    attr_reader :sfx_request_xml, :sfx_targets

    def initialize(issn)
        build_sfx_request(issn)
        @sfx_connection = establish_sfx_connection()
    end

    def get_terms
        @coral_connection = connect_to_coral_database()
        get_sfx_target_names()
        fetch_provider_terms_from_coral()
        # compare_for_duplicates()
        # fetch_coral_display_notes()
        # fetch_coral_last_update_dates()
        # fetch_coral_signature_dates()
        @provider_terms_list[:sfx_record_title] = @sfx_record_title
        @provider_terms_list[:sfx_record_issn] = @sfx_record_issn
        @provider_terms_list
    end

    private

    def establish_sfx_connection
        Faraday.new(:url => Rails.application.secrets.find_text["url"]) do |faraday|
            faraday.adapter Faraday.default_adapter
        end
    end

    def connect_to_coral_database
        if Rails.application.secrets.coral_database["password"]
            Mysql2::Client.new(
                :host => Rails.application.secrets.coral_database["host"],
                :port => Rails.application.secrets.coral_database["port"],
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
    def fetch_provider_terms_from_coral
        # puts "Target names:" + @sfx_targets.keys.to_s
        # nb Rob - the lisence metadata will contain several types of term information - look for ILL terms
        @provider_terms_list ||= {}
        all_terms = get_coral_license_metadata(@sfx_targets.keys)
        all_terms.each do |term|
            @provider_terms_list[:interlibrary_loan_terms] ||= {}
            puts "TERM TYPE: " + term[:term_type]
            if term[:term_type] == ('Interlibrary Loan' || 'Interlibrary Loan (additional notes)')
                extract_ill_values(term) 
                # pp @provider_terms_list[term[:provider_names]]
            end

            @provider_terms_list[:coursepack_terms] ||= {}
            if term[:term_type] == 'Coursepacks'
                extract_coursepack_values(term)
                # pp @provider_terms_list[term[:provider_names]]
            end

            @provider_terms_list[:ereserves_terms] ||= {}
            if term[:term_type].downcase == 'ereserves'
                extract_ereserves_values(term)
            end
        end
    end

    def extract_ill_values(term)
        @provider_terms_list[:interlibrary_loan_terms][term[:provider_names]] ||= {} 
        @provider_terms_list[:interlibrary_loan_terms][term[:provider_names]][:ill_effective_date] = term[:document_effective_date]
        @provider_terms_list[:interlibrary_loan_terms][term[:provider_names]][:ill_document_text] =  term[:term_text]
        @provider_terms_list[:interlibrary_loan_terms][term[:provider_names]][:ill_expression_id] = term[:expression_id]
        @provider_terms_list[:interlibrary_loan_terms][term[:provider_names]][:ill_display_note] = @provider_terms_list[:interlibrary_loan_terms][term[:provider_names]][:ill_display_note].to_s + term[:term_note].to_s + "\n"
        @provider_terms_list[:interlibrary_loan_terms][term[:provider_names]][:ill_last_update_date] = get_coral_last_update_date(term[:expression_id]) 
    end

    def extract_coursepack_values(term)
        @provider_terms_list[:coursepack_terms][term[:provider_names]] ||= {} 
        @provider_terms_list[:coursepack_terms][term[:provider_names]][:coursepack_effective_date] = term[:document_effective_date]
        @provider_terms_list[:coursepack_terms][term[:provider_names]][:coursepack_document_text] =  term[:term_text]
        @provider_terms_list[:coursepack_terms][term[:provider_names]][:coursepack_expression_id] = term[:expression_id]
        @provider_terms_list[:coursepack_terms][term[:provider_names]][:coursepack_display_note] = @provider_terms_list[:coursepack_terms][term[:provider_names]][:coursepack_display_note].to_s + term[:term_note].to_s + "\n"
        @provider_terms_list[:coursepack_terms][term[:provider_names]][:coursepack_last_update_date] = get_coral_last_update_date(term[:expression_id]) 
    end

    def extract_ereserves_values(term)
        @provider_terms_list[:ereserves_terms][term[:provider_names]] ||= {} 
        @provider_terms_list[:ereserves_terms][term[:provider_names]][:ereserves_effective_date] = term[:document_effective_date]
        @provider_terms_list[:ereserves_terms][term[:provider_names]][:ereserves_document_text] =  term[:term_text]
        @provider_terms_list[:ereserves_terms][term[:provider_names]][:ereserves_expression_id] = term[:expression_id]
        @provider_terms_list[:ereserves_terms][term[:provider_names]][:ereserves_display_note] = @provider_terms_list[:ereserves_terms][term[:provider_names]][:ereserves_display_note].to_s + term[:term_note].to_s + "\n"
        @provider_terms_list[:ereserves_terms][term[:provider_names]][:ereserves_last_update_date] = get_coral_last_update_date(term[:expression_id]) 
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
        sfx_record = response_xml.xpath('//openurl_result//record')
        sfx_record_xml = Nokogiri::XML(sfx_record.xpath('/')[0].content)
        @sfx_record_title = sfx_record_xml.xpath('//ctx_object_1//perldata/hash').xpath('item[@key="rft.title"][1]')[0].content
        @sfx_record_issn = sfx_record_xml.xpath('//ctx_object_1//perldata/hash').xpath('item[@key="rft.issn"][1]')[0].content
        valid_targets = {}
        target_nodes.each do |target_node|
            if target_node.xpath('service')[0].content == 'getFullTxt'
                valid_targets["#{target_node.xpath('target_name')[0].content}"] = {}
                valid_targets["#{target_node.xpath('target_name')[0].content}"][:target_url] = target_node.xpath('url')[0].content
            end
        end
        valid_targets
    end
    
    def get_coral_license_metadata(target_names)
        # puts "NAMES: '#{target_names.join("', '")}'"
        coral_terms_query = "SELECT et.shortName as 'term_type',
                                GROUP_CONCAT( DISTINCT s.shortName separator ', ') as 'provider_names',
                                d.documentID as 'document_id', 
                                d.shortName as 'document_name',
                                e.expressionID as 'expression_id',
                                date_format(d.effectiveDate, '%m/%d/%Y') as 'document_effective_date',
                                date_format(d.expirationDate, '%m/%d/%Y') as 'document_expiration_date',
                                e.documentText as 'term_text',
                                en.note as 'term_note'
                            FROM SFXProvider s
                                LEFT JOIN Document d ON ( d.documentID = s.documentID )
                                LEFT JOIN Expression e ON ( e.documentID = s.documentID )
                                INNER JOIN ExpressionType et ON ( e.expressionTypeID = et.expressionTypeID AND noteType = 'Display')
                                LEFT JOIN ExpressionNote en ON (e.expressionID = en.expressionID)
                            WHERE s.shortName IN ('#{target_names.join("', '")}')
                            GROUP BY d.documentID, 
                                d.shortName,
                                e.documentText,
                                en.note"
        results = @coral_connection.query("#{coral_terms_query}")
        # results.each do |result|
        #     puts "RESULT" + result.to_s
        # end
        all_terms = Array.new
        if results.count > 0
            results.each do |result|
                current_record = result.transform_keys!(&:to_sym)
                all_terms.push(current_record) if !check_for_expiration(current_record)
            end
            all_terms
        else
            all_terms.push({:term_type => 'Interlibrary Loan', :term_text => "Electronic resource ILL terms not defined. Please consider using print resource to fill ILL requests, if available."})
        end
    end

    def check_for_expiration(provider_record)
        today = Date.today
        if provider_record[:document_expiration_date]
            if Date.parse(provider_record[:document_expiration_date]) <= today 
                return true
            end
        else
            return false
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
end