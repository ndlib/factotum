require 'rails_helper'

describe QuicksearchController do
  describe '#subject' do

    describe 'NullDB' do
      include NullDB::RSpec::NullifiedDatabase
      


      describe 'no target' do
        it "redirects to xerxes" do
          get :subject
          expect(response).to be_redirect
          expect(response).to redirect_to(xerxes_url("/quicksearch/"))
        end

        it "does not send an error email" do
          expect {
            get :subject
          }.to change(ActionMailer::Base.deliveries, :size).by(0)
        end
      end

      describe 'database target' do
        before do
          @target = "/quicksearch/databases/database/NDU05514"
        end
        it "redirects to xerxes" do
          get :subject, target: @target
          expect(response).to be_redirect
          expect(response).to redirect_to(xerxes_url(@target))
        end

        it "does not send an error email" do
          expect {
            get :subject, target: @target
          }.to change(ActionMailer::Base.deliveries, :size).by(0)
        end
      end
    end

    def xerxes_url(path)
      "http://#{Rails.configuration.xerxes_domain}#{path}"
    end
  end
end
