module JustSayYesOrderHelper
  def just_say_yes_header
    content_for(:content_title, render(:partial => "just_say_yes_orders/header"))
  end
  
  def just_say_yes_auto_fields
    [:selector, ["Fund", :selected_fund], :price_code, :price, :electronic_resource, ["Cataloging Location", :selected_cataloging_location], ["ND Requester", :requester], :title, ["Format", :selected_format], ["Author", :display_author], ["Publisher/Provider", :display_publisher], ["Publication Year", :display_publication_year], ["OCLC number", :oclc_number], ["ISBN", :isbn], ["Link", :link_source]]
  end
  
  def just_say_yes_selector_options
    Selector.just_say_yes.sort{|a,b| a.last_first <=> b.last_first}.collect{|s| [s.last_first, s.netid]}
  end
  
  def just_say_yes_formats
    FORMATS
  end
  
  def just_say_yes_price_options
    PRICE_OPTIONS
  end
  
  PRICE_OPTIONS = [
    ["USD - United States Dollar", "USD"],
    ["EUR - Euro Member Countries", "EUR"],
    ["ARS - Argentina Peso", "ARS"],
    ["AUD - Australia Dollar", "AUD"],
    ["CAD - Canada Dollar", "CAD"],
    ["GBP - United Kingdom Pound", "GBP"],
    ["SEK - Sweden Krona", "SEK"],
  ]
  
  FORMATS = [
    "Book",
    "eBook",
    "Journal Backfile",
    "DVD",
    "CD",
  ]
end
