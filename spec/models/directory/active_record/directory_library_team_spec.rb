require 'rails_helper'

describe DirectoryLibraryTeam do

  let(:directory_library_team) { FactoryGirl.create(:directory_library_team) }
  subject { directory_library_team }

  describe "validations" do

    let(:valid_params) { { name: "My Faverit Lerbery!" } }

    it "saves with valid params" do
      #binding.pry
      directory_library_team.class.new(valid_params).save.should be_true
    end

    it "requires name to be unique" do
      data = valid_params
      data[:name] = directory_library_team.name

      directory_library_team.class.new(data).save.should be_false
    end

    it 'has a unit_url' do
      expect(subject.unit_url).to eq("http://library.nd.edu/directory/library_teams/#{subject.id}")
    end


  end




end
