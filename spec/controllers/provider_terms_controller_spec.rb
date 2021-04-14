require 'rails_helper'

describe ProviderTermsController do

    describe '#show' do
        before(:example) do
            @terms_call = nil
            VCR.use_cassette "provider_terms/provider_terms_response" do
                @terms_call = ProviderTerms.new('0168-8278')
                expect(ProviderTerms).to receive(:new).with('0168-8278').and_return(@terms_call)
                expect(@terms_call).to receive(:connect_to_coral_database).and_return(nil)
                expect(@terms_call).to receive(:get_coral_license_metadata).with(["Elsevier ScienceDirect Open Access Journals", "Elsevier SD Backfile", "Elsevier SD Freedom Collection"]).and_return(eval('[
                    {
                        :term_type=>"Interlibrary Loan", 
                        :provider_names=>"Elsevier ScienceDirect Open Access Journals, Elsevier SD Backfile, Elsevier SD Freedom Collection", 
                        :document_id=>1670, :document_name=>"Wiley 2016-2018 Online Enhanced License for Consortium Customers", 
                        :expression_id=>297, 
                        :document_effective_date=>"01/01/2016", 
                        :document_expiration_date=>nil, 
                        :term_text=>"3.1(e): The Licenseeâ€™s library staff may supply to another library, upon request by that library, either a single paper copy (by post or fax) or an electronic copy of an individual document from the Licensed Electronic Products, for the purpose of research or private study. The electronic copy must be supplied by secure electronic transmission (like Ariel) and must be deleted by the recipient library immediately after printing a paper copy of the document for its user.", 
                        :term_note=>"Follow standard ILL lending guidelines for licensed online content:\n1. Make sure that the requesting library sends us a copyright compliance statement (CCG or CCL)\n2. Make sure the request is not for anything other than private study, research, or scholarship.\n3. Include the original copyright notice\n4. No individual requests; must come from a library\n5. Use secure transmission method (ArticleExchange, Odyssey, etc., but NO email)"
                    }, 
                    {
                        :term_type=>"Coursepacks", 
                        :provider_names=>"Elsevier ScienceDirect Open Access Journals, Elsevier SD Backfile, Elsevier SD Freedom Collection", 
                        :document_id=>1670, 
                        :document_name=>"Wiley 2016-2018 Online Enhanced License for Consortium Customers", 
                        :expression_id=>349, 
                        :document_effective_date=>"01/01/2016", 
                        :document_expiration_date=>"02/15/2018", 
                        :term_text=>"C(1)(d). Authorized Users who are members of the Licensees faculty or staff may download and print out multiple copies of material from Licensed Electronic Products for the purpose of making a multi-source collection of information for classroom use (course-pack) or a virtual learning environment, to be distributed to students at the Licensees institution free of charge or at a cost-based fee.", 
                        :term_note=>"Coursepacks are permitted."
                    }
                    ]'))
                expect(@terms_call).to receive(:get_coral_last_update_date).with(297).and_return('02/10/2017')
                expect(@terms_call).to receive(:get_coral_last_update_date).with(349).and_return('03/15/2018')
                @terms = @terms_call.get_terms
                expect(@terms_call).to receive(:get_terms).and_return(@terms)
            end
            session[:netid] = OmniAuth.config.mock_auth[:okta].netid
        end

        it 'assigns the correct terms data' do
            get :show, issn: '0168-8278'
            expect(assigns(:provider_terms_data)).to equal(@terms)
        end

        it 'assigns the correct target titles' do
            get :show, issn: '0168-8278'
            expect(@terms.keys).to include(:interlibrary_loan_terms)
            expect(@terms.keys).to include(:coursepack_terms)
        end

        it 'assigns the correct display notes' do
            get :show, issn: '0168-8278'
            expect(@terms[:interlibrary_loan_terms]['Elsevier ScienceDirect Open Access Journals, Elsevier SD Backfile, Elsevier SD Freedom Collection'][:ill_display_note]).to eq("Follow standard ILL lending guidelines for licensed online content:\n1. Make sure that the requesting library sends us a copyright compliance statement (CCG or CCL)\n2. Make sure the request is not for anything other than private study, research, or scholarship.\n3. Include the original copyright notice\n4. No individual requests; must come from a library\n5. Use secure transmission method (ArticleExchange, Odyssey, etc., but NO email)\n")
            expect(@terms[:interlibrary_loan_terms]['Elsevier ScienceDirect Open Access Journals, Elsevier SD Backfile, Elsevier SD Freedom Collection'][:ill_document_text]).to eq("3.1(e): The Licenseeâ€™s library staff may supply to another library, upon request by that library, either a single paper copy (by post or fax) or an electronic copy of an individual document from the Licensed Electronic Products, for the purpose of research or private study. The electronic copy must be supplied by secure electronic transmission (like Ariel) and must be deleted by the recipient library immediately after printing a paper copy of the document for its user.")
            expect(@terms[:coursepack_terms]['Elsevier ScienceDirect Open Access Journals, Elsevier SD Backfile, Elsevier SD Freedom Collection'][:coursepack_display_note]).to eq("Coursepacks are permitted.\n")
            expect(@terms[:coursepack_terms]['Elsevier ScienceDirect Open Access Journals, Elsevier SD Backfile, Elsevier SD Freedom Collection'][:coursepack_document_text]).to eq("C(1)(d). Authorized Users who are members of the Licensees faculty or staff may download and print out multiple copies of material from Licensed Electronic Products for the purpose of making a multi-source collection of information for classroom use (course-pack) or a virtual learning environment, to be distributed to students at the Licensees institution free of charge or at a cost-based fee.")
        end

        it 'assigns the correct effective date' do
            get :show, issn: '0168-8278'
            expect(@terms[:interlibrary_loan_terms]['Elsevier ScienceDirect Open Access Journals, Elsevier SD Backfile, Elsevier SD Freedom Collection'][:ill_effective_date]).to eq('01/01/2016')
            expect(@terms[:coursepack_terms]['Elsevier ScienceDirect Open Access Journals, Elsevier SD Backfile, Elsevier SD Freedom Collection'][:coursepack_effective_date]).to eq('01/01/2016')
        end
    end
end