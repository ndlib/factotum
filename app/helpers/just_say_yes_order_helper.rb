module JustSayYesOrderHelper
  def just_say_yes_header
    content_for(:content_title, render(:partial => "just_say_yes_orders/header"))
  end
  
  def monographic_order_errors_on_rush_order?(monographic_order)
    [:rush_order, :rush_order_reason, :rush_order_reason_other].any?{|field| monographic_order.errors[field].present?}
  end
  
  def monographic_order_errors_on_cataloging_location?(monographic_order)
    [:cataloging_location, :cataloging_location_other].any?{|field| monographic_order.errors[field].present?}
  end
  
  def monographic_selector_options
    Selector.includes(:user).all.sort{|a,b| a.last_first <=> b.last_first}.collect{|s| [s.last_first, s.netid]}
  end
  
  def selector_fund_selects
    content = raw("")
    Selector.includes(:selector_funds).all.each do |selector|
      content += select_tag("selector_#{selector.netid}", options_for_select(selector_fund_options(selector)))
    end
    content
  end
  
  def selector_fund_options(selector)
    if selector
      selector.selector_funds.collect{|f| f.name}.sort
    else
      []
    end
  end
  
  def worldcat_icon
    raw %(<a href="http://www.worldcat.org/" target="_blank"><img border="0" src="https://www.worldcat.org/images/wc_badge_80x15.gif?ai=University_jkennel" width="80" height="15" alt="WorldCat lets people access the collections of libraries worldwide [WorldCat.org]" title="WorldCat lets people access the collections of libraries worldwide [WorldCat.org]"></a>)
  end
  
  def monographic_rush_order_reasons
    RUSH_REASONS
  end
  
  def just_say_yes_formats
    FORMATS
  end
  
  def monographic_collection_codes
    COLLECTION_CODES
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
    "Dataset",
    "Journal",
    "DVD",
    "CD",
  ]
  
  RUSH_REASONS = [
    "Needed for class", 
    "Limited availability", 
    "For reserve"
  ]
  
  COLLECTION_CODES = [
    "ARCHT/ARCV",
    "ARCHT/ARDVD",
    "ARCHT/ARMAP",
    "ARCHT/ARVID",
    "ARCHT/CAR",
    "ARCHT/CLASS",
    "ARCHT/FLOV",
    "ARCHT/FURN",
    "ARCHT/GEN",
    "ARCHT/MORF",
    "ARCHT/OVER",
    "ARCHT/RARE",
    "ARCHT/REF",
    "ARCHT/REFOV",
    "ARCHT/RESTH",
    "AUDIO/CASS",
    "AUDIO/CD",
    "AUDIO/DVD",
    "AUDIO/GEN",
    "AUDIO/LASER",
    "AUDIO/REC",
    "AUDIO/REEL",
    "AUDIO/VIDEO",
    "BIC/GEN",
    "BIC/CARER",
    "BIC/MEDIA",
    "BIC/BICRF",
    "CAMPR/CPL",
    "CAMPR/CPLSE",
    "CAMPR/CSCNO",
    "CAMPR/GRC",
    "CAMPR/ILS",
    "CAMPR/ILSRA",
    "CAMPR/KANEB",
    "CAMPR/LABSR",
    "CAMPR/LANG",
    "CAMPR/MEDIA",
    "CAMPR/ROLFS",
    "CAMPR/SMART",
    "CAMPR/SMPHO",
    "CHEMP/GEN",
    "CHEMP/OVER",
    "CHEMP/SPEC",
    "CPC",
    "DOCS/EUCOM",
    "DOCS/EURCD",
    "ENGIN/GEN",
    "ENGIN/OVER",
    "ENGIN/REF",
    "ENGIN/RESV",
    "ENGIN/RREF",
    "HESB/ACQ",
    "HESB/ADMIN",
    "HESB/ANAS",
    "HESB/BIND",
    "HESB/BYZRF",
    "HESB/CAT",
    "HESB/CREO",
    "HESB/FLAT",
    "HESB/FLATL",
    "HESB/GEN",
    "HESB/ILL",
    "HESB/INET",
    "HESB/MARS",
    "HESB/MUS",
    "HESB/MUSOF",
    "HESB/MUSRF",
    "HESB/OCAT",
    "HESB/ONEIL",
    "HESB/OVER",
    "HESB/OVERL",
    "HESB/PRES",
    "HESB/RES",
    "HESB/SRCAT",
    "HESB/SRDEP",
    "HESB/STATS",
    "HESB/THREF",
    "HESB/THRFO",
    "KELLO/GEN",
    "KELLO/PEACE",
    "LIBNT/NT@ND",
    "LIBNT/WWW",
    "LIBNT/GOPHR",
    "LIBNT/TELNT",
    "LIBNT/FTP",
    "LIFES/OPEN",
    "LIFES/NORA",
    "MATH/GEN",
    "MATH/MORSE",
    "MATH/RARE",
    "MATH/REF",
    "MATH/RREF",
    "MATH/STATS",
    "MEDIN/715",
    "MEDIN/715Q",
    "MEDIN/AMBR",
    "MEDIN/BYZ",
    "MEDIN/BYZRF",
    "MEDIN/DUMON",
    "MEDIN/GEN",
    "MEDIN/OLD",
    "MEDIN/OVER",
    "MEDIN/UNIV",
    "MICRO/GEN",
    "MICRO/CLOSE",
    "MICRO/GUIDE",
    "MRARE/MRARE",
    "RADLB/GEN",
    "REF/ATLAS",
    "REF/CREF",
    "REF/GEN",
    "REF/OVER",
    "REF/RFDOC",
    "ROME/ARGEN",
    "SPEC/CAPAM",
    "SPEC/DANTE",
    "SPEC/DANTO",
    "SPEC/GILL",
    "SPEC/GOREY",
    "SPEC/GREEN",
    "SPEC/HESB",
    "SPEC/LATAM",
    "SPEC/MINI",
    "SPEC/ND",
    "SPEC/NDOV",
    "SPEC/PARHI",
    "SPEC/PAUL6",
    "SPEC/PENG",
    "SPEC/RARE",
    "SPEC/RBOV",
    "SPEC/REF",
    "SPEC/SHAW",
    "SPEC/SHAWO",
    "SPEC/SMITH",
    "SPEC/SPORT",
    "SPEC/SPTRF",
    "SPEC/VAT2",
    "SPEC/VAULT",
  ]
end
