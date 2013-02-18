require 'spec_helper'

describe MonographicOrderHelper do
  describe '#monographic_currencies' do
    it 'lists USD first' do
      currencies = helper.monographic_currencies
      currencies.should be_a_kind_of Array
      currencies.first.should be_a_kind_of Acquisitions::Currency
      currencies.first.iso_code.should be == 'USD'
    end
  end
end
