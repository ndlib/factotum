require 'rails_helper'

describe MonographicOrderHelper do
  describe '#monographic_currencies' do
    it 'lists USD first' do
      currencies = helper.monographic_currencies
      expect(currencies).to be_a_kind_of Array
      # currencies.first.should be_an_instance_of(Acquisitions::Currency) #TODO harrison
      expect(currencies.first.iso_code).to eq('USD')
    end
  end
end
