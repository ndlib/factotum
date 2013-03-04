class Maps::CallNumberParser
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
      res = /^([A-Za-z]+[\s]*)([0-9]*[\s]*)([A-Za-z0-9\.\s]*)/.match(call_number)

      set_vars(res)
      lead_subject
    end

    def set_vars(res)
      @division = res[1].to_s.strip
      @subject  = res[2].to_s.strip
      @author   = res[3].to_s.strip
    end


    def lead_subject
      @subject ||= "0" 

      res = ''
      (6 - @subject.length).times { res << '0' }

      @subject = res + @subject
    end 

end