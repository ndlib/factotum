# encoding: utf-8
module MonographicOrderHelper
  def monographic_order_header(title = "Order Requests")
    content_for(:content_title, content_tag(:h1, title))
  end

  def monographic_breadcrumb(*crumbs)
    crumbs.unshift(link_to("Order Requests", monographic_orders_path))
    breadcrumb(*crumbs)
  end

  def catalog_title_search_url(search_term = nil)
    catalog_params = {
      vid: "NDU",
      tab: "nd_campus",
      mode: "Advanced",
      "vl(16833817UI0)" => "title"
    }
    anchor = ""
    if search_term.present?
      catalog_params.merge!({
        fn: "search",
        "vl(freeText0)" => search_term
      })
      anchor = '#exlidResultsContainer'
    end
    "https://onesearch.library.nd.edu/primo_library/libweb/action/search.do?" + catalog_params.to_query + anchor
  end

  def monographic_order_errors_on_rush_order?(monographic_order)
    [:rush_order, :rush_order_reason, :rush_order_reason_other].any?{|field| monographic_order.errors[field].present?}
  end

  def monographic_order_errors_on_preorder?(monographic_order)
    [:preorder, :preorder_expected_availability].any?{|field| monographic_order.errors[field].present?}
  end

  def monographic_order_errors_on_vol_copy_sys_num?(monographic_order)
    [:added_volume_copy, :volume_copy_system_number].any?{|field| monographic_order.errors[field].present?}
  end

  def monographic_order_errors_on_cataloging_location?(monographic_order)
    [:cataloging_location, :cataloging_location_other].any?{|field| monographic_order.errors[field].present?}
  end

  def monographic_selector_options
    Selector.monographic.default_order.collect{|s| [s.last_first, s.netid]}
  end

  def monographic_creator_search_options
    current_user.monographic_orders.creators.collect{|u| [u.last_first, u.netid]}
  end

  def monographic_selector_search_options
    current_user.monographic_orders.selectors.collect{|u| [u.last_first, u.netid]}
  end

  def selector_fund_selects
    content = raw("")
    Selector.includes(:selector_funds).all.each do |selector|
      content += select_tag("selector_funds_#{selector.netid}", options_for_select(selector_fund_options(selector)))
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

  def selector_currency_selects
    content = raw("")
    MonographicOrder.selector_currencies.each do |netid, currencies|
      content += select_tag("selector_currencies_#{netid}", options_for_select(selector_currency_options(currencies)))
    end
    content
  end

  def selector_currency_options(currencies)
    currencies.collect{|c| [c.label, c]}
  end

  def selector_cataloging_location_selects
    content = raw("")
    MonographicOrder.selector_cataloging_locations.each do |netid, locations|
      content += select_tag("selector_cataloging_locations_#{netid}", options_for_select(selector_cataloging_location_options(locations)))
    end
    content
  end

  def selector_cataloging_location_options(locations)
    locations.collect{|l| [l, l]}
  end

  def worldcat_icon
    raw %(<a href="http://www.worldcat.org/" target="_blank"><img border="0" src="https://www.worldcat.org/images/wc_badge_80x15.gif?ai=University_jkennel" width="80" height="15" alt="WorldCat lets people access the collections of libraries worldwide [WorldCat.org]" title="WorldCat lets people access the collections of libraries worldwide [WorldCat.org]"></a>)
  end

  def monographic_currencies
    Acquisitions::Currency.all
  end

  def monographic_rush_order_reasons
    RUSH_REASONS
  end

  def monographic_formats
    FORMATS
  end

  def monographic_collection_codes
    COLLECTION_CODES
  end

  def monographic_purchase_types
    PURCHASE_TYPES
  end

  FORMATS = [
    "Book",
    "DVD",
    "CD",
    "Manuscript",
    "Microform",
    "Blu-ray",
    "Collection",
    "Digitization",
    "Other"
  ]

  RUSH_REASONS = [
    "For course reserves",
    "Needed by patron",
    "Needed for class",
    "On reserve with seller",
    "Limited availability"
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
    "BIC/GEN",
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
    "CAMPR/OLDES",
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
    "HESB/CD",
    "HESB/CD-ROM",
    "HESB/CREO",
    "HESB/DVD",
    "HESB/FLAT",
    "HESB/FLATL",
    "HESB/GEN",
    "HESB/ILL",
    "HESB/INET",
    "HESB/LREAD",
    "HESB/MARS",
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
    "HESB/VIDEO",
    "KELLO/GEN",
    "KELLO/PEACE",
    "LIBNT/NT@ND",
    "LIBNT/WWW",
    "LIBNT/GOPHR",
    "LIBNT/TELNT",
    "LIBNT/FTP",
    "MATH/GEN",
    "MATH/MORSE",
    "MATH/RARE",
    "MATH/REF",
    "MATH/RREF",
    "MATH/STATS",
    "MEDIN/714B",
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
    "MUSIC/GEN",
    "MUSIC/OFF",
    "MUSIC/REF",
    "MUSIC/SPEC",
    "MUSIC/MEDIA",
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
    "Needs Review(notify on arrival)",
  ]

  PURCHASE_TYPES = [
    "Single title purchase",
    "Multiple title purchase(see attached list of titles)",
    "Collection purchase(see attached Collection Checklist)",
  ]
end
