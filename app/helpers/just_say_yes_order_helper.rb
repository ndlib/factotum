module JustSayYesOrderHelper
  def just_say_yes_header
    content_for(:content_title, render(:partial => "just_say_yes_orders/header"))
  end
  
  def just_say_yes_auto_fields
    JustSayYesOrder.auto_fields
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
