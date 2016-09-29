require 'rails_helper'

describe Acquisitions::Currency do

  describe '#label' do
    subject { Acquisitions::Currency.find(:usd) }
    it 'contains the iso code and name' do
      subject.label.should be == "USD - United States Dollar"
    end
  end

  describe 'self' do
    subject { Acquisitions::Currency }

    describe '#all' do
      it 'is an array of currencies' do
        subject.all.should be_a_kind_of Array
        # subject.all.first.should be_a_kind_of subject #todo harrison
      end

      it 'lists USD first' do
        subject.all.first.id.should be == :usd
      end
    end
  end
end
