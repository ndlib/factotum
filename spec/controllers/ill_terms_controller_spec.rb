require 'rails_helper'

describe IllTermsController do

    describe '#show' do
        before(:example) do
            @terms_call = nil
            VCR.use_cassette "ill_terms/ill_terms_response" do
                @terms_call = IllTerms.new('0168-8278')
                expect(IllTerms).to receive(:new).with('0168-8278').and_return(@terms_call)
                expect(@terms_call).to receive(:connect_to_coral_database).and_return(nil)
                expect(@terms_call).to receive(:get_coral_license_metadata).with('Elsevier ScienceDirect Open Access Journals').and_return(eval('{:expressionId=>296, :effectiveDate=>"01/01/2014", :documentText=>"Some text from Coral", :qualifier=>nil}'))
                expect(@terms_call).to receive(:get_coral_license_metadata).with('Elsevier SD Backfile').and_return(eval('{:documentText=>"Electronic resource ILL terms not defined. Please consider using print resource to fill ILL requests, if available."}'))
                expect(@terms_call).to receive(:get_coral_license_metadata).with('Elsevier SD Freedom Collection').and_return(eval('{:documentText=>"Electronic resource ILL terms not defined. Please consider using print resource to fill ILL requests, if available."}'))
                expect(@terms_call).to receive(:get_coral_display_note).with(296).and_return('Follow standard ILL lending guidelines for licensed online content.')
                expect(@terms_call).to receive(:get_coral_last_update_date).with(296).and_return('02/10/2017')
                expect(@terms_call).to receive(:get_coral_signature_date).with('Elsevier ScienceDirect Open Access Journals').and_return('01/01/2001')
                @ill_terms = @terms_call.get_ill_terms
                expect(@terms_call).to receive(:get_ill_terms).and_return(@ill_terms)
            end
            session[:netid] = OmniAuth.config.mock_auth[:okta].netid
        end

        it 'assigns the correct terms data' do
            get :show, issn: '0168-8278'
            expect(assigns(:ill_terms_data)).to equal(@ill_terms)
        end

        it 'assigns the correct target titles' do
            get :show, issn: '0168-8278'
            expect(@ill_terms.keys).to include('Elsevier ScienceDirect Open Access Journals')
            expect(@ill_terms.keys).to include('Elsevier SD Backfile')
            expect(@ill_terms.keys).to include('Elsevier SD Freedom Collection')
        end

        it 'assigns the correct target urls' do
            get :show, issn: '0168-8278'
            expect(@ill_terms['Elsevier ScienceDirect Open Access Journals'][:target_url]).to eq('https://login.proxy.library.nd.edu/login?url=https://www.sciencedirect.com/science/journal/01688278')
        end

        it 'assigns the correct display notes' do
            get :show, issn: '0168-8278'
            expect(@ill_terms['Elsevier ScienceDirect Open Access Journals'][:display_note]).to eq('Follow standard ILL lending guidelines for licensed online content.')
        end

        it 'does not display notes if expression id is absent' do
            get :show, issn: '0168-8278'
            expect(@ill_terms['Elsevier SD Backfile'][:display_note]).to be_nil
        end
        
        it 'assigns the correct document text' do
            get :show, issn: '0168-8278'
            expect(@ill_terms['Elsevier ScienceDirect Open Access Journals'][:documentText]).to eq('Some text from Coral')
            expect(@ill_terms['Elsevier SD Backfile'][:documentText]).to eq('Electronic resource ILL terms not defined. Please consider using print resource to fill ILL requests, if available.')
        end
    end
end