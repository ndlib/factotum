require 'rails_helper'

describe DirectoryLibraryTeam do

  let(:directory_library_team) { FactoryBot.create(:directory_library_team) }
  subject { directory_library_team }

  describe "validations" do

    let(:valid_params) { { name: "My Faverit Lerbery!" } }

    it "saves with valid params" do
      #binding.pry
      expect(directory_library_team.class.new(valid_params).save).to be_truthy
    end

    it "requires name to be unique" do
      data = valid_params
      data[:name] = directory_library_team.name

      expect(directory_library_team.class.new(data).save).to be_falsey
    end

    it 'has a unit_url' do
      expect(subject.unit_url).to eq("http://library.nd.edu/directory/library_teams/#{subject.id}")
    end


  end




end
