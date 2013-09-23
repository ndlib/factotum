class PurchaseRequest < ActiveRecord::Base
  attr_accessible :requester_email, :requester_name, :requester_department, :requester_phone, :requester_address, :requester_affiliation, :requester_notification_preference, :hold_for_requester, :checked_online_catalog, :comments, :subject, :format, :author, :title, :isbn, :oclc, :year, :publication_place, :publisher, :pages, :edition, :copies, :pieces, :series, :price

  SUBJECTS_EMAILS = {
    "Accounting" => "shayes1@nd.edu",
    "Africana Studies" => "grugg@nd.edu",
    "Agriculture" => "jladwig@nd.edu",
    "American History" => "grugg@nd.edu",
    "American Studies" => "grugg@nd.edu",
    "Anthropology" => "jkayongo@nd.edu",
    "Architecture" => "jparker9@nd.edu",
    "Art, Art History and Design" => "msteven1@nd.edu",
    "Astronomy" => "tmiller5@nd.edu",
    "Auxiliary Sciences of History" => "ljordan@nd.edu",
    "Biochemistry" => "tmiller5@nd.edu",
    "Biology and Life Sciences" => "jladwig@nd.edu",
    "Books, Bibliography" => "sedwards@nd.edu",
    "Business" => "shayes1@nd.edu",
    "Byzantine Studies" => "dsulli10@nd.edu",
    "Catholic Studies" => "jmcmanu1@nd.edu",
    "Celtic Languages and Literature" => "aclemen1@nd.edu",
    "Chemistry" => "tmiller5@nd.edu",
    "Classical Languages and Literature" => "dsulli10@nd.edu",
    "Computer Science" => "brach.10@nd.edu",
    "Dance" => "msteven1@nd.edu",
    "East Asian and African Language" => "Hye-jin.Juhn.1@nd.edu",
    "Earth Sciences" => "cszambel@nd.edu",
    "Economics" => "csmith@nd.edu",
    "Education" => "mhavert@nd.edu",
    "Engineering" => "brach.10@nd.edu",
    "English and American Literature" => "lfuderer@nd.edu",
    "English Language" => "lfuderer@nd.edu",
    "European History" => "Julie.K.Tanaka.10@nd.edu",
    "Film" => "msteven1@nd.edu",
    "Finance" => "shayes1@nd.edu",
    "French Literature" => "lfuderer@nd.edu",
    "Gender Studies" => "jtanaka1@nd.edu",
    "General Studies" => "langhurst.1@nd.edu",
    "Geology, Oceanography, Ecology" => "brach.10@nd.edu",
    "Geology" => "brach.10@nd.edu",
    "Germanic Languages and Literatures" => "rkusmer@nd.edu",
    "History of Science and Technology" => "jross@nd.edu",
    "Irish Studies" => "aclemen1@nd.edu",
    "Italian Literature" => "tbergstr@nd.edu",
    "Journalism" => "grugg@nd.edu",
    "Judaica" => "akrieger@nd.edu",
    "Landscape Architecture" => "jparker9@nd.edu",
    "Language Acquisition" => "sedwards@nd.edu",
    "Latin American History" => "ddressin@nd.edu",
    "Latino Studies" => "ddressin@nd.edu",
    "Law" => "edmonds.7@nd.edu",
    "Library and Information Studies" => "aclemen1@nd.edu",
    "Management" => "shayes1@nd.edu",
    "Marketing" => "shayes1@nd.edu",
    "Mathematics" => "jladwig@nd.edu",
    "Medical Sciences" => "jladwig@nd.edu",
    "Medieval Studies" => "msmyth@nd.edu",
    "Music" => "rsimon1@nd.edu",
    "Nanotechnology" => "brach.10@nd.edu",
    "North American History" => "grugg@nd.edu",
    "Oriental Languages and Literature" => "Hye-jin.Juhn.1@nd.edu",
    "Peace Studies" => "jarcher@nd.edu",
    "Philosophy" => "akrieger@nd.edu",
    "Photography" => "msteven1@nd.edu",
    "Physics" => "tmiller5@nd.edu",
    "Polish Studies" => "nlyandre@nd.edu",
    "Political Science" => "Kflemin4@nd.edu",
    "Program of Liberal Studies" => "lbayard@nd.edu",
    "Psychology" => "csmith@nd.edu",
    "Slavic Languages and Literature" => "nlyandre@nd.edu",
    "Sociology" => "kwillis1@nd.edu",
    "Spanish and Portuguese Literature" => "ddressin@nd.edu",
    "Sports and Games" => "grugg@nd.edu",
    "Technology and Engineering" => "cszambel@nd.edu",
    "Television" => "msteven1@nd.edu",
    "Theatre" => "msteven1@nd.edu",
    "Theology" => "akrieger@nd.edu"
  }

  SUBJECTS = SUBJECTS_EMAILS.keys

  NOTIFICATION_PREFERENCES = ["Email", "Phone", "Campus Mail"]

  FORMATS = ["Book", "Journal", "Microform", "CD", "DVD", "Blu-ray", "Database", "Other"]

  validates_presence_of :requester_netid, :requester_name, :requester_email, :requester_notification_preference, :subject, :format, :title
  validates_inclusion_of :subject, in: SUBJECTS, allow_blank: true
  validates_inclusion_of :format, in: FORMATS, allow_blank: true
  validates_inclusion_of :requester_notification_preference, in: NOTIFICATION_PREFERENCES, allow_blank: true

  def subject_email
    SUBJECTS_EMAILS[subject]
  end

  def self.subject_names
    SUBJECTS
  end

  def self.notification_preferences
    NOTIFICATION_PREFERENCES
  end

  def self.formats
    FORMATS
  end
end
