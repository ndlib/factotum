class ProviderTermsController < ApplicationController
    layout "terms"
    before_filter :login_user!

    def show
        provider_terms = ProviderTerms.new(params[:issn])
        @provider_terms_data = provider_terms.get_terms

        respond_to do |format|
            format.html
            format.json { render json: @provider_terms_data }
        end
    end
end