class Maps::CallNumberRange < ActiveRecord::Base
  extend Forwardable

  self.table_name = 'maps_call_number_ranges'

  validates :collection_code, :sublibrary_code, :begin_call_number, :end_call_number, :floor_map, :presence => true

  belongs_to :floor_map

  def_delegators :floor_map, :library, :image_url, :name

  def self.search_for_call_number(call_number, sublibrary, collection)
    call_number = CallNumberParser.new(call_number)
    where(collection_code: collection)
      .where(sublibrary_code: sublibrary)
      .where(" begin_call_number <= ? AND end_call_number >= ? ", call_number.search_string, call_number.search_string).first
  end


  def self.ordered_call_number
    order(:begin_call_number)
  end


  def range_name
    "#{begin_call_number} - #{end_call_number}"
  end


  def building
    floor_map.building
  end


  # spits and parses a call number so it can be queryied
  class CallNumberParser
    attr_reader :division, :subject, :author, :call_number

    def initialize(call_number)
      @call_number = call_number
      parse
    end

    def search_string
      @division + @subject
    end

    private

      def parse
        res = /\A([A-Za-z]+[\s]*)([0-9]*[\s]*)([A-Za-z0-9\.\s]*)/.match(call_number)

        @division = res[1].to_s.strip
        @subject  = lead_subject(res[2].to_s.strip)
        @author   = res[3].to_s.strip
      end


      def lead_subject(subject)
        subject ||= "0"

        res = ''
        (6 - subject.length).times { res << '0' }

        res + subject
      end
  end

end
