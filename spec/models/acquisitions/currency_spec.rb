require 'rails_helper'

describe Acquisitions::Currency do

  describe '#label' do
    subject { Acquisitions::Currency.find(:usd) }
    it 'contains the iso code and name' do
      expect(subject.label).to eq("USD - United States Dollar")
    end
  end

  describe 'self' do
    subject { Acquisitions::Currency }

    describe '#all' do
      it 'is an array of currencies' do
        expect(subject.all).to be_a_kind_of Array
        # subject.all.first.should be_a_kind_of subject #todo harrison
      end

      it 'lists USD first' do
        expect(subject.all.first.id).to eq(:usd)
      end
    end
  end
end
