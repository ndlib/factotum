class MapsApi

  def initialize
    @building_fetcher = Building.public_method(:alphabetical)
  end


  def collection_codes
    {'General' => 'GEN'}
  end



  def building(id)
    Building.find(id)
  end


  def buildings
    fetch_buildings
  end


  def list_buildings
    buildings
  end


  def api_floorplan_request(params)
    building = determine_building_from_request(params)

    return nil if building.nil?

    building.map_for_floor(determine_floor_from_request(params))
  end


  def api_call_number_request(params)
    call_number = Maps::CallNumberRange.search_for_call_number(call_number_from_request(params), sublibrary_from_request(params), collection_from_request(params))

    if call_number.nil?
      nil
    else
      call_number.floor_map
    end
  end


  private

    def fetch_buildings
      @building_fetcher.()
    end


    def determine_floor_from_request(params)
      params[:floor]
    end
    

    def determine_building_from_request(params)
      if params[:library].nil?

        return Building.hesburgh_library
      end

      Building.search_for_building(params[:library])
    end


    def call_number_from_request(params)
      params[:call_number]
    end


    def sublibrary_from_request(params)
      params[:sublibrary].nil? ? 'HESB' : params[:sublibrary]
    end


    def collection_from_request(params)
      params[:collection].nil? ? 'GEN' : params[:collection]
    end

  public

  def sublibrary_codes
    {'Hesburgh' => 'HESB',"REFAI" => "REFAI",
"DICT" => "DICT",
"FILM" => "FILM",
"FICHE" => "FICHE",
"FLOV" => "FLOV",
"FURN" => "FURN",
"GEN" => "GEN",
"HITCH" => "HITCH",
"INDEX" => "INDEX",
"OFF" => "OFF",
"OVER" => "OVER",
"PARK" => "PARK",
"PER" => "PER",
"RARE" => "RARE",
"REF" => "REF",
"RES" => "RES",
"RES" => "RES",
"RES" => "RES",
"RESOV" => "RESOV",
"RESTH" => "RESTH",
"CPL" => "CPL",
"CPLSE" => "CPLSE",
"GRC" => "GRC",
"ILS" => "ILS",
"ILSRB" => "ILSRB",
"KANEB" => "KANEB",
"MEDIA" => "MEDIA",
"MARIT" => "MARIT",
"COMP" => "COMP",
"LABSR" => "LABSR",
"LABSF" => "LABSF",
"ARCHV" => "ARCHV",
"UTHD" => "UTHD",
"NDVI" => "NDVI",
"ROLFS" => "ROLFS",
"CSC" => "CSC",
"LANG" => "LANG",
"CSCNO" => "CSCNO",
"EALL" => "EALL",
"SMART" => "SMART",
"SMPHO" => "SMPHO",
"CLREF" => "CLREF",
"NEW" => "NEW",
"REF" => "REF",
"RESV" => "RESV",
"RREF" => "RREF",
"SPEC" => "SPEC",
"THES" => "THES",
"VERT" => "VERT",
"UPER" => "UPER",
"EQUIP" => "EQUIP",
"CONF" => "CONF",
"PERM" => "PERM",
"PEACE" => "PEACE",
"NT" => "NT",
"WWW" => "WWW",
"WWWD" => "WWWD",
"XP" => "XP",
"GOPHR" => "GOPHR",
"TELNT" => "TELNT",
"FTP" => "FTP",
"BKUP" => "BKUP",
"NDNET" => "NDNET",
"NORA" => "NORA",
"OPEN" => "OPEN",
"WORK" => "WORK",
"ATLAS" => "ATLAS",
"MORSE" => "MORSE",
"STOR" => "STOR",
"CREO" => "CREO",
"AVRES" => "AVRES",
"MUS" => "MUS",
"MUSOF" => "MUSOF",
"MUSRF" => "MUSRF",
"NEWH" => "NEWH",
"ONEIL" => "ONEIL",
"RES" => "RES",
"RESSP" => "RESSP",
"RESSU" => "RESSU",
"RESFA" => "RESFA",
"PRES" => "PRES",
"BYZRF" => "BYZRF",
"BYZRO" => "BYZRO",
"INET" => "INET",
"ACQ" => "ACQ",
"ACQOR" => "ACQOR",
"ACQSR" => "ACQSR",
"ADMIN" => "ADMIN",
"ANAS" => "ANAS",
"APR" => "APR",
"APR" => "APR",
"APR" => "APR",
"APR" => "APR",
"APR" => "APR",
"APR" => "APR",
"APR" => "APR",
"APR" => "APR",
"APR" => "APR",
"APRA" => "APRA",
"APRB" => "APRB",
"APRC" => "APRC",
"APRD" => "APRD",
"APRE" => "APRE",
"APRF" => "APRF",
"APRG" => "APRG",
"APRH" => "APRH",
"APRI" => "APRI",
"APRJ" => "APRJ",
"ASTO" => "ASTO",
"ASTO" => "ASTO",
"BIND" => "BIND",
"CADM" => "CADM",
"CAT" => "CAT",
"ILL" => "ILL",
"ISRC" => "ISRC",
"ISRCR" => "ISRCR",
"MARS" => "MARS",
"MARSS" => "MARSS",
"OCAT" => "OCAT",
"RESSW" => "RESSW",
"SRACQ" => "SRACQ",
"SRCAT" => "SRCAT",
"SRDEP" => "SRDEP",
"STAFF" => "STAFF",
"OVERL" => "OVERL",
"FLATL" => "FLATL",
"CASS" => "CASS",
"CD" => "CD",
"CDROM" => "CDROM",
"DVD" => "DVD",
"LASER" => "LASER",
"REC" => "REC",
"REEL" => "REEL",
"VIDEO" => "VIDEO",
"CLOSE" => "CLOSE",
"NEWS" => "NEWS",
"NEWCO" => "NEWCO",
"CATCO" => "CATCO",
"MUSCO" => "MUSCO",
"NEHCO" => "NEHCO",
"GUIDE" => "GUIDE",
"GUIDO" => "GUIDO",
"CREF" => "CREF",
"EUCOM" => "EUCOM",
"EUFIC" => "EUFIC",
"EURCD" => "EURCD",
"EURMP" => "EURMP",
"HESB" => "HESB",
"MAP" => "MAP",
"SUDPO" => "SUDPO",
"NEWG" => "NEWG",
"OMEL" => "OMEL",
"SUDCD" => "SUDCD",
"SUDD" => "SUDD",
"SUDEN" => "SUDEN",
"SUDFI" => "SUDFI",
"SUDIN" => "SUDIN",
"SUDMB" => "SUDMB",
"SUDMP" => "SUDMP",
"SUDOC" => "SUDOC",
"SUDOV" => "SUDOV",
"SUDP" => "SUDP",
"SUDRF" => "SUDRF",
"UNFRX" => "UNFRX",
"UNFTR" => "UNFTR",
"UNFUD" => "UNFUD",
"" => "",
"715Q" => "715Q",
"AMBR" => "AMBR",
"DUMON" => "DUMON",
"OLD" => "OLD",
"UNIV" => "UNIV",
"RFRES" => "RFRES",
"BIB" => "BIB",
"RFDOC" => "RFDOC",
"INDXA" => "INDXA",
"INDXB" => "INDXB",
"INDXC" => "INDXC",
"INDXD" => "INDXD",
"INDXE" => "INDXE",
"INDXF" => "INDXF",
"INDXG" => "INDXG",
"INDXH" => "INDXH",
"INDXI" => "INDXI",
"INDXJ" => "INDXJ",
"INDXK" => "INDXK",
"INDXL" => "INDXL",
"INDXM" => "INDXM",
"INDXN" => "INDXN",
"INDXO" => "INDXO",
"INDXP" => "INDXP",
"BROAD" => "BROAD",
"CADEV" => "CADEV",
"CAPAM" => "CAPAM",
"DANTE" => "DANTE",
"DANTO" => "DANTO",
"EPHEM" => "EPHEM",
"GILL" => "GILL",
"GOREY" => "GOREY",
"GREEN" => "GREEN",
"GREEO" => "GREEO",
"HACK" => "HACK",
"LATAM" => "LATAM",
"LIMIT" => "LIMIT",
"MAPS" => "MAPS",
"MINI" => "MINI",
"MISS" => "MISS",
"MODMS" => "MODMS",
"NEWSG" => "NEWSG",
"NEWSC" => "NEWSC",
"ND" => "ND",
"NDOV" => "NDOV",
"NDSER" => "NDSER",
"NDTH" => "NDTH",
"PARHI" => "PARHI",
"PAUL" => "PAUL",
"PENG" => "PENG",
"RBOV" => "RBOV",
"SHAW" => "SHAW",
"SHAWO" => "SHAWO",
"SMITH" => "SMITH",
"SPORT" => "SPORT",
"SPTRF" => "SPTRF",
"VAT" => "VAT",
"VAULT" => "VAULT",
"RB1MI" => "RB1MI",
"RB2XS" => "RB2XS",
"RB3SM" => "RB3SM",
"RB4ME" => "RB4ME",
"RB5LA" => "RB5LA",
"RB6XL" => "RB6XL",
"RB7OV" => "RB7OV",
"RB8JU" => "RB8JU",
"REFCL" => "REFCL",
"TGEN" => "TGEN",
"TREF" => "TREF",
"TMFIC" => "TMFIC",
"TPER" => "TPER",
"TRARE" => "TRARE",
"TBR" => "TBR",
"NONE" => "NONE",
"MORF" => "MORF",
"BICRF" => "BICRF",
"SERF" => "SERF",
"ARVID" => "ARVID",
"ARDVD" => "ARDVD",
"ARGEN" => "ARGEN",
"FLAT" => "FLAT",
"THREF" => "THREF",
"MR2XS" => "MR2XS",
"MR3SM" => "MR3SM",
"MR4ME" => "MR4ME",
"MR5LA" => "MR5LA",
"MR6XL" => "MR6XL",
"MR7OV" => "MR7OV",
"MRARE" => "MRARE",
"TEMP" => "TEMP",
"DUM" => "DUM",}
  end  

end