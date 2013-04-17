require 'spec_helper'

describe AvailabilityHelper do
  describe '#options_for_unit_select' do
    it 'returns an array of units' do
      VCR.use_cassette 'api/units' do
        units = helper.options_for_unit_select
        expect(units).to be_a_kind_of Array
        expect(units.size).to be > 0
        expect(units.first).to be == ["Academic Outreach and Engagement Program", 90]
      end
    end
  end

  describe '#options_for_unit_select' do
    it 'returns an array of employees' do
      VCR.use_cassette 'api/employees' do
        units = helper.options_for_person_select
        expect(units).to be_a_kind_of Array
        expect(units.size).to be > 0
        expect(units.first).to be == ["Ajamie, Lauren", "lajamie"]
      end
    end
  end
end
