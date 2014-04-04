class ContactInformationView

  attr_accessor :contact_information

  def initialize(contact_information)
    @contact_information = contact_information
    @info_type = @contact_information.type
    @contactable_type = @contact_information.contactable_type
  end

  def primary?
    if @contact_information.is_primary?
      return "Y"
    else
      return "N"
    end
  end

  def type_display
    unless @info_type.nil?
      @info_type.underscore.humanize.titleize.sub "Directory Contact ", ""
    end
  end


  def contactable_type_display
    unless @contactable_type.nil?
      @contactable_type.underscore.humanize.titleize.sub "Directory ", ""
    end
  end

end
