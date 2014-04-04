class CommitteeView
  include RailsHelpers
  
  delegate :id, :name, :employees, :websites, :faxes, :chairs, :to => :committee

  attr_accessor :committee

  def initialize(committee)
    @committee = committee
  end


  def phones
    phones = []
    if @committee.phones.blank?
        @committee.chairs.each do |chair|
          chair.phones.each do |phone|
            phone.is_primary? ? phones.push(phone.contact_information) : next
          end
        end
    else
      @committee.phones.each do |phone|
        phone.is_primary? ? phones.push(phone.contact_information) : nil
      end
    end
    return phones
  end


  def websites
    websites = []
    unless @committee.websites.blank?
      @committee.websites.each do |website|
        website.is_primary? ? websites.push(website.contact_information) : nil
      end
    end
    return websites
  end


  def emails
    emails = []
    if @committee.emails.blank?
        @committee.chairs.each do |chair|
          chair.emails.each do |email|
            email.is_primary? ? emails.push(email.contact_information) : next
          end
        end
    else
      @committee.emails.each do |email|
        email.is_primary? ? emails.push(email.contact_information) : nil
      end
    end
    return emails
  end


  def addresses
    addresses = []
    if @committee.addresses.blank?
        @committee.chairs.each do |chair|
          chair.addresses.each do |address|
            address.is_primary? ? addresses.push(address.contact_information) : next
          end
        end
    else
      @committee.addresses.each do |address|
        address.is_primary? ? addresses.push(address.contact_information) : nil
      end
    end
    return addresses
  end


  def render_about_text
    if !@committee.about_text.nil?
      helpers.raw markdown_parser.render(@committee.about_text)
    else
      nil
    end
  end


  def markdown_parser
    Redcarpet::Markdown.new(Redcarpet::Render::HTML.new(:hard_wrap => true))
  end

end
