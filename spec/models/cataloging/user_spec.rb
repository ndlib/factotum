require 'rails_helper'

describe Cataloging::User do

  let(:cataloging_user)  { FactoryGirl.create(:cataloging_user)}

  describe "validations" do
    let(:valid_params) { { name: "mah kitteh", default_format_id: "1", default_location_id: "1", supervisor_id: "1", admin: "1", username: "mkitteh", last_sign_in_at: 1.days.ago, created_at: 2.days.ago, updated_at: 3.days.ago } }


    it "saves with valid params" do
      cataloging_user.class.new(valid_params).save.should be_true
    end

    it "requires a unique username " do
      data = valid_params
      data[:username] = cataloging_user.username

      cataloging_user.class.new(data).save.should be_false
    end
  end



  #describe :cataloging_user do

 #   it " returns a list of months available to edit" do

 #   end

  #end


end
