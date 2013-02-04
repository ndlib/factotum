# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Emanuel', :city => cities.first)

selector_netids = [
  "jarcher",
  "lbayard",
  "tbergstr",
  "bburk1",
  "cszambel",
  "aclemen1",
  "gdannell",
  "ddressin",
  "lfuderer",
  "shayes1",
  "sedwards",
  "ljordan",
  "jkayongo",
  "akrieger",
  "rkusmer",
  "jladwig",
  "nlyandre",
  "cmak",
  "jmatthe2",
  "jmcmanu1",
  "tmiller5",
  "jparker9",
  "gporter",
  "jross",
  "grugg",
  "csmith",
  "fsmith3",
  "msmyth",
  "msteven1",
  "dsulli10",
  "rsimon1"
]

selector_netids.each do |netid|
  if selector = Selector.find_by_netid(netid)
    if !selector.monographic? || !selector.just_say_yes?
      selector.update_attributes!(:monographic => true, :just_say_yes => true)
    end
  else
    selector = Selector.new(:netid => netid, :monographic => true, :just_say_yes => true)
    selector.save!
  end
end

just_say_yes_users = [
  "jarnott",
  "kblackst",
  "ldube",
  "kkinslow",
  "alanghur",
  "plawton",
  "emorgan",
  "lmorgan1",
  "bpietras",
  "crichter",
  "lsharp1",
  "dshorey",
  "ljenny",
  "mvanjaco",
  "dwalker6",
]

just_say_yes_users.each do |netid|
  if selector = Selector.find_by_netid(netid)
    if !selector.just_say_yes?
      selector.update_attributes!(:just_say_yes => true)
    end
  else
    selector = Selector.new(:netid => netid, :just_say_yes => true)
    selector.save!
  end
end

selector_funds = [
  ["jarcher","KPEACEAO"],
  ["jarcher","KPEACECD"],
  ["jarcher","KPEACEEV"],
  ["jarcher","KPEACEJS"],
  ["jarcher","KPEACESM"],
  ["jarcher","KSHAHIN"],
  ["jarcher","PCPEACE"],
  ["jarcher","PCSHARIA"],
  ["jarcher","PEAC"],
  ["jarcher","PEACSO"],
  ["jarcher","SING"],
  ["jarcher","SINGSO"],
  ["Bayard, Laura","ALGO"],
  ["Bayard, Laura","ALMAR"],
  ["Bayard, Laura","ALPO"],
  ["Bayard, Laura","OSUL"],
  ["Bayard, Laura","OSULSO"],
  ["Bayard, Laura","PLIB"],
  ["Bergstrom, Tracy","ALFER"],
  ["Bergstrom, Tracy","ALMO"],
  ["Bergstrom, Tracy","ALMONT"],
  ["Bergstrom, Tracy","COMM"],
  ["Bergstrom, Tracy","ITAL"],
  ["Bergstrom, Tracy","ITALSO"],
  ["Bergstrom, Tracy","RBRNITAL"],
  ["Bergstrom, Tracy","RITALIAN"],
  ["Bergstrom, Tracy","RITALIANSO"],
  ["Bergstrom, Tracy","RLIT"],
  ["Bergstrom, Tracy","RROME"],
  ["Bergstrom, Tracy","RVITALIAN"],
  ["bburk1", "LATNO"],
  ["bburk1", "LATNOS"],
  ["bburk1", "SOC"],
  ["bburk1", "SOCSO"],
  ["bburk1", "SOCS"],
  ["cszambel","CHEMENGR"],
  ["cszambel","COMPSCI"],
  ["cszambel","ECKE"],
  ["cszambel","ENGRSO"],
  ["cszambel","PLAN"],
  ["cszambel","RCOMPSCI"],
  ["cszambel","RENGR"],
  ["Clements, Aedin","ALEL"],
  ["Clements, Aedin","ALNICD"],
  ["Clements, Aedin","ALOC"],
  ["Clements, Aedin","ALRAP"],
  ["Clements, Aedin","CLING"],
  ["Clements, Aedin","HEEK"],
  ["Clements, Aedin","IRLIT"],
  ["Clements, Aedin","IRST"],
  ["Clements, Aedin","RIRISHLIT"],
  ["Clements, Aedin","RIRISHST"],
  ["Clements, Aedin","RIRSHSTSO"],
  ["Clements, Aedin","SMIH"],
  ["Dannelly, Gay","ALBAR"],
  ["Dannelly, Gay","ALCON"],
  ["Dannelly, Gay","ALDEAK"],
  ["Dannelly, Gay","ALFAULK"],
  ["Dannelly, Gay","ALFERN"],
  ["Dannelly, Gay","ALGRE"],
  ["Dannelly, Gay","ALGRIF"],
  ["Dannelly, Gay","ALKR"],
  ["Dannelly, Gay","ALKUN"],
  ["Dannelly, Gay","ALMAC"],
  ["Dannelly, Gay","ALMES"],
  ["Dannelly, Gay","ALPI"],
  ["Dannelly, Gay","ALSEN"],
  ["Dannelly, Gay","BRADG"],
  ["Dannelly, Gay","DIMA"],
  ["Dannelly, Gay","FBDT"],
  ["Dannelly, Gay","FBHI"],
  ["Dannelly, Gay","GEN"],
  ["Dannelly, Gay","GENSO"],
  ["Dannelly, Gay","GRAD"],
  ["Dannelly, Gay","GRADSP"],
  ["Dannelly, Gay","HIST"],
  ["Dannelly, Gay","HISTSO"],
  ["Dannelly, Gay","LGIF"],
  ["Dannelly, Gay","LSDISST"],
  ["Dannelly, Gay","LSGS"],
  ["Dannelly, Gay","LSMI"],
  ["Dannelly, Gay","LSNI"],
  ["Dannelly, Gay","LSNIDVD"],
  ["Dannelly, Gay","MILIS"],
  ["Dannelly, Gay","OGRADY"],
  ["Dannelly, Gay","PCASIAN"],
  ["Dannelly, Gay","PROVG"],
  ["Dannelly, Gay","PROVR"],
  ["Dannelly, Gay","RDUPLIC"],
  ["Dannelly, Gay","RGENLIB"],
  ["Dannelly, Gay","RGENLSO"],
  ["Dannelly, Gay","RHUMAN"],
  ["Dannelly, Gay","RHUMANSO"],
  ["Dannelly, Gay","RPOHSTSO"],
  ["Dannelly, Gay","RPOLHIST"],
  ["Dannelly, Gay","RWLDHIST"],
  ["Dannelly, Gay","RWLDHSTSO"],
  ["Dannelly, Gay","TASS"],
  ["Dannelly, Gay","WEBER"],
  ["Dressing, David","ALAM"],
  ["Dressing, David","ALFE"],
  ["Dressing, David","ALGRAUBART"],
  ["Dressing, David","ALIB"],
  ["Dressing, David","ALMOR"],
  ["Dressing, David","ALPEN"],
  ["Dressing, David","ALVE"],
  ["Dressing, David","ALVIT"],
  ["Dressing, David","COLUM"],
  ["Dressing, David","FLADG"],
  ["Dressing, David","FLADGC"],
  ["Dressing, David","LSKG"],
  ["Dressing, David","PROVLA"],
  ["Dressing, David","RHISTCAR"],
  ["Dressing, David","RLATAMST"],
  ["Dressing, David","RLATSTSO"],
  ["Dressing, David","RPORTST"],
  ["Dressing, David","SPAN"],
  ["Dressing, David","SPANSO"],
  ["Dressing, David","ULAST"],
  ["Dressing, David","WSCONE"],
  ["Fuderer, Laura","ALBR"],
  ["Fuderer, Laura","ALDE"],
  ["Fuderer, Laura","ALDO"],
  ["Fuderer, Laura","ALDUB"],
  ["Fuderer, Laura","ALHAR"],
  ["Fuderer, Laura","ALRI"],
  ["Fuderer, Laura","ALROD"],
  ["Fuderer, Laura","ENGL"],
  ["Fuderer, Laura","ENGLSO"],
  ["Fuderer, Laura","FREN"],
  ["Fuderer, Laura","FRENSO"],
  ["Fuderer, Laura","FRLIT"],
  ["Fuderer, Laura","GFPO"],
  ["Fuderer, Laura","HYFR"],
  ["Fuderer, Laura","HYFRSO"],
  ["Fuderer, Laura","MLIT"],
  ["Fuderer, Laura","PHDLIT"],
  ["Fuderer, Laura","PHDLTSO"],
  ["Fuderer, Laura","RBRITLIT"],
  ["Fuderer, Laura","RBRTLTSO"],
  ["Fuderer, Laura","RENGLISH"],
  ["Fuderer, Laura","RENGLSO"],
  ["Fuderer, Laura","RLFR"],
  ["Fuderer, Laura","USHER"],
  ["Fuderer, Laura","USHERSO"],
  ["Hayes, Steve","ANTO"],
  ["Hayes, Steve","ANTOSO"],
  ["Hayes, Steve","BUSN"],
  ["Hayes, Steve","BUSNSO"],
  ["Hayes, Steve","LSBUSN"],
  ["Hayes, Steve","RBUSN"],
  ["Hayes, Steve","RESBUSN"],
  ["sedwards","FROST"],
  ["sedwards","REFE"],
  ["sedwards","REFESO"],
  ["Jordan, Lou","ALJE"],
  ["Jordan, Lou","ALLIN"],
  ["Jordan, Lou","ALMIR"],
  ["Jordan, Lou","ALSH"],
  ["Jordan, Lou","ARAB"],
  ["Jordan, Lou","ARABG"],
  ["Jordan, Lou","ARBST"],
  ["Jordan, Lou","ASIA"],
  ["Jordan, Lou","CHIN"],
  ["Jordan, Lou","CIVIL"],
  ["Jordan, Lou","COIN"],
  ["Jordan, Lou","DVER"],
  ["Jordan, Lou","GRARE"],
  ["Jordan, Lou","GUO"],
  ["Jordan, Lou","JAPN"],
  ["Jordan, Lou","KASIAN"],
  ["Jordan, Lou","MRARE"],
  ["Jordan, Lou","NDC"],
  ["Jordan, Lou","OGCOIN"],
  ["Jordan, Lou","RARE"],
  ["Jordan, Lou","RARESO"],
  ["Jordan, Lou","RHUMAN2"],
  ["Jordan, Lou","SCOLL"],
  ["Kayongo, Jessica","ALBLUM"],
  ["Kayongo, Jessica","ALKU"],
  ["Kayongo, Jessica","ANTY"],
  ["Kayongo, Jessica","ANTYSO"],
  ["Krieger, Alan","ABRA"],
  ["Krieger, Alan","ABRASO"],
  ["Krieger, Alan","ALCL"],
  ["Krieger, Alan","ALDU"],
  ["Krieger, Alan","ALKARB"],
  ["Krieger, Alan","ALNOV"],
  ["Krieger, Alan","ALOD"],
  ["Krieger, Alan","ALRUS"],
  ["Krieger, Alan","ALSU"],
  ["Krieger, Alan","ALTHEOREF"],
  ["Krieger, Alan","BURT"],
  ["Krieger, Alan","CATH"],
  ["Krieger, Alan","CATHSO"],
  ["Krieger, Alan","CTHEO"],
  ["Krieger, Alan","CTNSG"],
  ["Krieger, Alan","FCST"],
  ["Krieger, Alan","FPROT"],
  ["Krieger, Alan","FPROTSO"],
  ["Krieger, Alan","FRTH"],
  ["Krieger, Alan","GIL"],
  ["Krieger, Alan","MARY"],
  ["Krieger, Alan","PHIL"],
  ["Krieger, Alan","PHILSO"],
  ["Krieger, Alan","RSTHEO"],
  ["Krieger, Alan","SHPH"],
  ["Krieger, Alan","THEO"],
  ["Krieger, Alan","THEOSO"],
  ["Krieger, Alan","TRAU"],
  ["Kusmer, Rob","ALBOES"],
  ["Kusmer, Rob","ALHO"],
  ["Kusmer, Rob","ALROC"],
  ["Kusmer, Rob","GERM"],
  ["Kusmer, Rob","GERMSO"],
  ["Kusmer, Rob","NGERMAN"],
  ["Kusmer, Rob","PHDLIT"],
  ["Kusmer, Rob","PHDLTSO"],
  ["Kusmer, Rob","RGERM"],
  ["Kusmer, Rob","RGERMSO"],
  ["jladwig","ECON"],
  ["jladwig","ECONSO"],
  ["jladwig","LEE"],
  ["jladwig","LISC"],
  ["jladwig","LISCSO"],
  ["jladwig","MATH"],
  ["jladwig","MATHC"],
  ["jladwig","MATHSO"],
  ["jladwig","PCACMST"],
  ["jladwig","PCAMSTSO"],
  ["jladwig","RASCIENGR1"],
  ["jladwig","RASCIENGR2"],
  ["jladwig","RCSCIENCE"],
  ["jladwig","RECON"],
  ["jladwig","RECONSO"],
  ["jladwig","RHLIFESCI"],
  ["jladwig","RLIFESCI"],
  ["jladwig","RSCIENCE"],
  ["jladwig","RSCISO"],
  ["jladwig","RZEBRA"],
  ["jladwig","SCIENGR"],
  ["jladwig","STOL"],
  ["Lyandres, Natasha","ALDA"],
  ["Lyandres, Natasha","ALMART"],
  ["Lyandres, Natasha","ALNRU"],
  ["Lyandres, Natasha","LSNI"],
  ["Lyandres, Natasha","LSNIDVD"],
  ["Lyandres, Natasha","LSNIGILL"],
  ["Lyandres, Natasha","MRUC"],
  ["Lyandres, Natasha","MRUCSO"],
  ["Lyandres, Natasha","PCPDA"],
  ["Lyandres, Natasha","RSEE"],
  ["Lyandres, Natasha","RUHIST"],
  ["Lyandres, Natasha","RUSHIST"],
  ["Lyandres, Natasha","RUSN"],
  ["Lyandres, Natasha","RUSNSO"],
  ["Lyandres, Natasha","RWLDHIST"],
  ["Mak, Collette","RESV"],
  ["Mak, Collette","RILLFAC"],
  ["Mak, Collette","RPDAILL"],
  ["Matthews, Jennifer","ALAR"],
  ["Matthews, Jennifer","ALBEC"],
  ["Matthews, Jennifer","ALBEUD"],
  ["Matthews, Jennifer","ALFAS"],
  ["Matthews, Jennifer","ALJEFF"],
  ["Matthews, Jennifer","ALPRIZ"],
  ["Matthews, Jennifer","FILM"],
  ["Matthews, Jennifer","FILMAPR"],
  ["Matthews, Jennifer","LIBJ"],
  ["Matthews, Jennifer","LIBJSO"],
  ["Matthews, Jennifer","MUSC"],
  ["Matthews, Jennifer","PCMUSIC"],
  ["Matthews, Jennifer","RFILM"],
  ["Matthews, Jennifer","RFILMSO"],
  ["Matthews, Jennifer","RMISMUSC"],
  ["Matthews, Jennifer","RMUSCSO"],
  ["Matthews, Jennifer","RMUSIC"],
  ["Matthews, Jennifer","RSMUSIC"],
  ["Matthews, Jennifer","RYNFILM"],
  ["Matthews, Jennifer","RYNMUSC"],
  ["Matthews, Jennifer","RYNMUSCSO"],
  ["McManus, Jean","ACAT"],
  ["McManus, Jean","FOCA"],
  ["McManus, Jean","GAMC"],
  ["Miller, Thurston","CHEM"],
  ["Miller, Thurston","CHPHSO"],
  ["Miller, Thurston","PCSPECTRA"],
  ["Miller, Thurston","PHYJ"],
  ["Miller, Thurston","RACHSO"],
  ["Miller, Thurston","RCHEMPHY"],
  ["Miller, Thurston","RCSCIENCE"],
  ["Miller, Thurston","RSCIENCE"],
  ["Miller, Thurston","RSCISO"],
  ["Miller, Thurston","SCIENGR2"],
  ["Parker, Jennifer","ARCH"],
  ["Parker, Jennifer","LSARCH"],
  ["Parker, Jennifer","RARCH"],
  ["Parker, Jennifer","RARCHSO"],
  ["Parker, Jennifer","ROMEARCH"],
  ["gporter","AFST"],
  ["gporter","ALDOS"],
  ["gporter","ALMC"],
  ["gporter","ALWI"],
  ["gporter","AMHIST"],
  ["gporter","AMST"],
  ["gporter","FBAF"],
  ["gporter","FOLE"],
  ["gporter","GEND"],
  ["gporter","JOUR"],
  ["gporter","PROVAF"],
  ["gporter","RAMHIST"],
  ["gporter","RAMST"],
  ["gporter","RJOURN"],
  ["gporter","RSCHMAMST"],
  ["gporter","TWIST"],
  ["gporter","WJOU"],
  ["Ross, Joe","HPSC"],
  ["Ross, Joe","HPSCSO"],
  ["Ross, Joe","STV"],
  ["Rugg, George","JOYC"],
  ["Rugg, George","OGCIV"],
  ["Rugg, George","SPGA"],
  ["ljenny","LIBTS"],
  ["ljenny","LIBTSO"],
  ["ljenny","RPLC"],
  ["Smith, Cheri","ALCAP"],
  ["Smith, Cheri","ALCLAU"],
  ["Smith, Cheri","ALHU"],
  ["Smith, Cheri","ALKE"],
  ["Smith, Cheri","ALLASK"],
  ["Smith, Cheri","ALVASK"],
  ["Smith, Cheri","EDUC"],
  ["Smith, Cheri","GOVT"],
  ["Smith, Cheri","GOVTSO"],
  ["Smith, Cheri","PSY"],
  ["Smith, Cheri","SOCSCI"],
  ["Smith, Felicia","ALRODM"],
  ["Smith, Felicia","LATNO"],
  ["Smith, Felicia","SOC"],
  ["Smith, Felicia","SOCSO"],
  ["Smyth, Marina","MEDI"],
  ["Smyth, Marina","MEDISO"],
  ["Smyth, Marina","REFMEDI"],
  ["Smyth, Marina","RMEDIEVAL"],
  ["Smyth, Marina","RMEDISO"],
  ["Smyth, Marina","SHAN"],
  ["Stevenson, Marsha","ALGOPI"],
  ["Stevenson, Marsha","ALRH"],
  ["Stevenson, Marsha","ART"],
  ["Stevenson, Marsha","INFDVD"],
  ["Stevenson, Marsha","LIPKA"],
  ["Stevenson, Marsha","RSPEC"],
  ["Stevenson, Marsha","RYAN"],
  ["Stevenson, Marsha","RYANSO"],
  ["dsulli10","ALBL"],
  ["dsulli10","ALBRA"],
  ["dsulli10","ALFO"],
  ["dsulli10","ALHERN"],
  ["dsulli10","ALMULL"],
  ["dsulli10","ALSC"],
  ["dsulli10","ALTHO"],
  ["dsulli10","ALTOR"],
  ["dsulli10","ANAST"],
  ["dsulli10","BYZA"],
  ["dsulli10","CLAC"],
  ["dsulli10","CLACSO"],
  ["dsulli10","FRHI"],
  ["dsulli10","KCLASSIC"],
  ["dsulli10","MBYZ"],
  ["dsulli10","MBYZSO"],
  ["dsulli10","VACCA"],
  ["rsimon1","ALBEUD"],
  ["rsimon1","ALJEFF"],
  ["rsimon1","MAPR"],
  ["rsimon1","MUSC"],
  ["rsimon1","PCMUSIC"],
  ["rsimon1","RMISMUSC"],
  ["rsimon1","RMUSIC"],
  ["rsimon1","ROPEERAPR"],
  ["rsimon1","RSMUSIC"],
]

funds_for_all_selectors = [
  "RPLC"
]

selector_funds.each do |selector_name, fund_name|
  user = User.guess_by_name(selector_name)
  if SelectorFund.where(:netid => user.netid, :name => fund_name).count == 0
    SelectorFund.create(:netid => user.netid, :name => fund_name)
  end
end

funds_for_all_selectors.each do |fund_name|
  Selector.all.each do |selector|
    if SelectorFund.where(:netid => selector.netid, :name => fund_name).count == 0
      SelectorFund.create(:netid => selector.netid, :name => fund_name)
    end
  end
end

# Default admins to Laura Sill and WADU members
selector_admins = ["ljenny","jkennel","jhartzle","rfox2","rmallott","awetheri"]
selector_admins.each do |netid|
  selector = Selector.find_or_create_by_netid(netid)
  selector.update_attributes!(:admin => true)
end


# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


s = Availability::ServicePoint.create!( name: "Hesburgh Library Building", code: "hesburgh")
s.new_hours( {
                 name: "Spring Semester Hours",
                 prepend_text: "",
                 postpend_text: "<a href=\"http://www.library.nd.edu/about/hours/procedures.shtml\" class=\"cboxElement\">*24/5 Procedures</a>",
                 monday: "Open 24 hours*",
                 tuesday: "Open 24 hours*",
                 wednesday: "Open 24 hours*",
                 thursday: "Open 24 hours*",
                 friday: "Open till 11pm",
                 saturday: "9am - 7pm",
                 sunday: "Opens at 10am",
                 saved_day_ranges: "M,Tu,W,Th|F|Sa|Su",
                 start_date: 1.months.ago,
                 end_date: DateTime.parse("2013-05-11")
             }
)

s.new_hours_exception(
    {
        name: "Easter Hours",
        friday: 'Open till 6pm',
        saturday: '10am - 5pm',
        sunday: 'Noon - Midnight',
        prepend_text: 'Easter Hours are as follows',
        saved_day_ranges: 'f|sa|su',
        start_date: 1.day.ago,
        end_date: 4.days.from_now
    })



s = Availability::ServicePoint.create!( name: "Circulation and Course Reserves ", code: "circulation")
s.new_hours( {
                 name: "Spring Semester Hours",
                 prepend_text: "",
                 postpend_text: "",
                 monday: "8 am - 12 am",
                 tuesday: "8 am - 12 am",
                 wednesday: "8 am - 12 am",
                 thursday: "8 am - 12 am",
                 friday: "8 am - 5 pm",
                 saturday: "12 pm - 5 pm",
                 sunday: "12 pm - 12 am",
                 saved_day_ranges: "M,Tu,W,Th|F|Sa|Su",
                 start_date: 1.months.ago,
                 end_date: DateTime.parse("2013-05-11")
             }
)

s = Availability::ServicePoint.create!( name: "Computer Lab", code: "computer_lab")
s.new_hours( {
                 name: "Spring Semester Hours",
                 prepend_text: "",
                 postpend_text: "",
                 monday: "Open 24 hours",
                 tuesday: "Open 24 hours",
                 wednesday: "Open 24 hours",
                 thursday: "Open 24 hours",
                 friday: "Open till 11pm",
                 saturday: "9am - 7pm",
                 sunday: "Opens at 10am",
                 saved_day_ranges: "M,Tu,W,Th|F|Sa|Su",
                 start_date: 1.months.ago,
                 end_date: DateTime.parse("2013-05-11")
             }
)

s = Availability::ServicePoint.create!( name: "Lower Level ServicePoint Desk", code: "lower_level_service_desk")
s.new_hours( {
                 name: "Spring Semester Hours",
                 prepend_text: "",
                 postpend_text: "",
                 monday: "9 am - 10 pm",
                 tuesday: "9 am - 10 pm",
                 wednesday: "9 am - 10 pm",
                 thursday: "9 am - 10 pm",
                 friday: "9 am - 5 pm",
                 saturday: "12 pm - 5 pm",
                 sunday: "12 pm - 12 am",
                 saved_day_ranges: "M,Tu,W,Th|F|Sa|Su",
                 start_date: 1.months.ago,
                 end_date: DateTime.parse("2013-05-11")
             }
)

s = Availability::ServicePoint.create!( name: "Medieval Institute", code: "medieval")
s.new_hours( {
                 name: "Spring Semester Hours",
                 prepend_text: "",
                 postpend_text: "",
                 monday: "8 am - 5 pm",
                 tuesday: "8 am - 5 pm",
                 wednesday: "8 am - 5 pm",
                 thursday: "8 am - 5 pm",
                 friday: "8 am - 5 pm",
                 saturday: "CLOSED",
                 sunday: "CLOSED",
                 saved_day_ranges: "M,Tu,W,Th,F|Sa|Su",
                 start_date: 1.months.ago,
                 end_date: DateTime.parse("2013-05-11")
             }
)

s = Availability::ServicePoint.create!( name: "Music and Media Services Unit ", code: "music_and_media")
s.new_hours( {
                 name: "Spring Semester Hours",
                 prepend_text: "",
                 postpend_text: "",
                 monday: "8 am - 10 pm",
                 tuesday: "8 am - 10 pm",
                 wednesday: "8 am - 10 pm",
                 thursday: "8 am - 10 pm",
                 friday: "8 am - 10 pm",
                 saturday: "12 pm - 5 pm",
                 sunday: "12 pm - 10 pm",
                 saved_day_ranges: "M,Tu,W,Th,F|Sa|Su",
                 start_date: 1.months.ago,
                 end_date: DateTime.parse("2013-05-11")
             }
)

s = Availability::ServicePoint.create!( name: "Reference Desk", code: "reference")
s.new_hours( {
                 name: "Spring Semester Hours",
                 prepend_text: "",
                 postpend_text: "",
                 monday: "9 am - 9 pm",
                 tuesday: "9 am - 9 pm",
                 wednesday: "9 am - 9 pm",
                 thursday: "9 am - 9 pm",
                 friday: "9 am - 5 pm",
                 saturday: "12 pm - 5 pm",
                 sunday: "12 pm - 9 pm",
                 saved_day_ranges: "M,Tu,W,Th|F|Sa|Su",
                 start_date: 1.months.ago,
                 end_date: DateTime.parse("2013-05-11")
             }
)

s = Availability::ServicePoint.create!( name: "Special Collection", code: "special_collection")
s.new_hours( {
                 name: "Spring Semester Hours",
                 prepend_text: "",
                 postpend_text: "",
                 monday: "8 am - 5 pm",
                 tuesday: "8 am - 5 pm",
                 wednesday: "8 am - 5 pm",
                 thursday: "8 am - 5 pm",
                 friday: "8 am - 5 pm",
                 saturday: "CLOSED",
                 sunday: "CLOSED",
                 saved_day_ranges: "M,Tu,W,Th,F|Sa|Su",
                 start_date: 1.months.ago,
                 end_date: DateTime.parse("2013-05-11")
             }
)

s = Availability::ServicePoint.create!( name: "University Archives", code: "archives")
s.new_hours( {
                 name: "Spring Semester Hours",
                 prepend_text: "",
                 postpend_text: "",
                 monday: "8 am - 5 pm",
                 tuesday: "8 am - 5 pm",
                 wednesday: "8 am - 5 pm",
                 thursday: "8 am - 5 pm",
                 friday: "8 am - 5 pm",
                 saturday: "CLOSED",
                 sunday: "CLOSED",
                 saved_day_ranges: "M,Tu,W,Th,F|Sa|Su",
                 start_date: 1.months.ago,
                 end_date: DateTime.parse("2013-05-11")
             }
)

s = Availability::ServicePoint.create!( name: "Architecture Library", code: "architecture_library")
s.new_hours( {
                 name: "Spring Semester Hours",
                 prepend_text: "",
                 postpend_text: "",
                 monday: "9 am - Midnight",
                 tuesday: "9 am - Midnight",
                 wednesday: "9 am - Midnight",
                 thursday: "9 am - Midnight",
                 friday: "8 am - 6 pm",
                 saturday: "11 am - 5 pm",
                 sunday: "11 am - Midnight",
                 saved_day_ranges: "M,Tu,W,Th|F|Sa|Su",
                 start_date: 1.months.ago,
                 end_date: DateTime.parse("2013-05-11")
             }
)

s = Availability::ServicePoint.create!( name: "Mahaffey Business Information Center", code: "bic")
s.new_hours( {
                 name: "Spring Semester Hours",
                 prepend_text: "",
                 postpend_text: "",
                 monday: "8 am - 10 pm",
                 tuesday: "8 am - 10 pm",
                 wednesday: "8 am - 10 pm",
                 thursday: "8 am - 10 pm",
                 friday: "8 am - 5 pm",
                 saturday: "12 pm - 5 pm",
                 sunday: "1 pm - 9 pm",
                 saved_day_ranges: "M,Tu,W,Th|F|Sa|Su",
                 start_date: 1.months.ago,
                 end_date: DateTime.parse("2013-05-11")
             }
)

s = Availability::ServicePoint.create!( name: "Chemistry/Physics Library", code: "chem_phys_library")
s.new_hours( {
                 name: "Spring Semester Hours",
                 prepend_text: "",
                 postpend_text: "",
                 monday: "8 am - Midnight",
                 tuesday: "8 am - Midnight",
                 wednesday: "8 am - Midnight",
                 thursday: "8 am - Midnight",
                 friday: "8 am - 5 pm",
                 saturday: "CLOSED",
                 sunday: "1 pm - Midnight",
                 saved_day_ranges: "M,Tu,W,Th|F|Sa|Su",
                 start_date: 1.months.ago,
                 end_date: DateTime.parse("2013-05-11")
             }
)

s = Availability::ServicePoint.create!( name: "Engineering Library", code: "engineering_library")
s.new_hours( {
                 name: "Spring Semester Hours",
                 prepend_text: "",
                 postpend_text: "*Close at 5:00 pm on Friday and all day Saturday on home football weekends.",
                 monday: "8 am - 11pm",
                 tuesday: "8 am - 11pm",
                 wednesday: "8 am - 11pm",
                 thursday: "8 am - 11pm",
                 friday: "8 am - 6 pm",
                 saturday: "1 pm - 5 pm",
                 sunday: "1 pm - 11 pm",
                 saved_day_ranges: "M,Tu,W,Th|F|Sa|Su",
                 start_date: 1.months.ago,
                 end_date: DateTime.parse("2013-05-11")
             }
)

s = Availability::ServicePoint.create!( name: "Kellogg/Kroc Library Information Center", code: "kellogg_library")
s.new_hours( {
                 name: "Spring Semester Hours",
                 prepend_text: "",
                 postpend_text: "",
                 monday: "1 pm - 5 pm",
                 tuesday: "1 pm - 5 pm",
                 wednesday: "1 pm - 5 pm",
                 thursday: "1 pm - 5 pm",
                 friday: "CLOSED",
                 saturday: "CLOSED",
                 sunday: "CLOSED",
                 saved_day_ranges: "M,Tu,W,Th|F|Sa|Su",
                 start_date: 1.months.ago,
                 end_date: DateTime.parse("2013-05-11")
             }
)

s = Availability::ServicePoint.create!( name: "Kresge Law Library", code: "law_library")
s.new_hours( {
                 name: "Spring Semester Hours",
                 prepend_text: "",
                 postpend_text: "During the examination period, beginning, Friday, May 3 through Tuesday, May 14, the law library is reserved for law students only. Non-law patrons are asked to not use the law library as a study hall.",
                 monday: "noon - 10 pm",
                 tuesday: "noon - 10 pm",
                 wednesday: "noon - 10 pm",
                 thursday: "noon - 10 pm",
                 friday: "noon - 8 pm",
                 saturday: "noon - 8 pm",
                 sunday: "noon - 10 pm",
                 saved_day_ranges: "M,Tu,W,Th|F|Sa|Su",
                 start_date: 1.months.ago,
                 end_date: DateTime.parse("2013-05-11")
             }
)


s = Availability::ServicePoint.create!( name: "O\'Meara Mathematics Library", code: "math_library")
s.new_hours( {
                 name: "Spring Semester Hours",
                 prepend_text: "",
                 postpend_text: "",
                 monday: "9 am - Midnight",
                 tuesday: "9 am - Midnight",
                 wednesday: "9 am - Midnight",
                 thursday: "9 am - Midnight",
                 friday: "9 am - 5 pm",
                 saturday: "1 pm - 5 pm",
                 sunday: "1 pm - Midnight",
                 saved_day_ranges: "M,Tu,W,Th|F|Sa|Su",
                 start_date: 1.months.ago,
                 end_date: DateTime.parse("2013-05-11")
             }
)

s = Availability::ServicePoint.create!( name: "Radiation Reading Room", code: "radiation")
s.new_hours( {
                 name: "Spring Semester Hours",
                 prepend_text: "",
                 postpend_text: "",
                 monday: "8 am - Midnight",
                 tuesday: "8 am - Midnight",
                 wednesday: "8 am - Midnight",
                 thursday: "8 am - Midnight",
                 friday: "1 pm - 5 pm",
                 saturday: "CLOSED",
                 sunday: "CLOSED",
                 saved_day_ranges: "M,Tu,W,Th,F|Sa|Su",
                 start_date: 1.months.ago,
                 end_date: DateTime.parse("2013-05-11")
             }
)

s = Availability::ServicePoint.create!( name: "Visual Resources Center", code: "visual_resources")
s.new_hours( {
                 name: "Spring Semester Hours",
                 prepend_text: "",
                 postpend_text: "",
                 monday: "8 am - 6 pm",
                 tuesday: "8 am - 6 pm",
                 wednesday: "8 am - 6 pm",
                 thursday: "8 am - 6 pm",
                 friday: "8 am - 6 pm",
                 saturday: "CLOSED",
                 sunday: "CLOSED",
                 saved_day_ranges: "M,Tu,W,Th,F|Sa|Su",
                 start_date: 1.months.ago,
                 end_date: DateTime.parse("2013-05-11")
             }
)



puts "Database seeding complete"
