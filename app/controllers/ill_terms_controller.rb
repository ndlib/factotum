class IllTermsController < ApplicationController
    before_filter :login_user!

    def show
        ill_terms = IllTerms.new(params[:issn])
        @ill_terms_data = ill_terms.get_ill_terms

        respond_to do |format|
            format.html
            format.json { render json: @ill_terms_data }
        end
    end
end