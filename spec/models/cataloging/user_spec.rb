require 'rails_helper'

describe Cataloging::User do

  let(:cataloging_user)  { FactoryBot.create(:cataloging_user)}

  describe "validations" do
    let(:valid_params) { { name: "mah kitteh", default_format_id: "1", default_location_id: "1", supervisor_id: "1", admin: "1", username: "mkitteh", last_sign_in_at: 1.days.ago, created_at: 2.days.ago, updated_at: 3.days.ago } }


    it "saves with valid params" do
      expect(cataloging_user.class.new(valid_params).save).to be_truthy
    end

    it "requires a unique username " do
      data = valid_params
      data[:username] = cataloging_user.username

      expect(cataloging_user.class.new(data).save).to be_falsey
    end
  end



  #describe "#cataloging_user" do

 #   it " returns a list of months available to edit" do

 #   end

  #end


end
