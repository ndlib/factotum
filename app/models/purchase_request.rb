class PurchaseRequest < ActiveRecord::Base

  SUBJECTS_EMAILS = {
    "Accounting" => "shayes1@nd.edu",
    "Africana Studies" => "lmorgan1@nd.edu",
    "Agriculture" => "jladwig@nd.edu",
    "American History" => "rbohlman@nd.edu",
    "American Studies" => "rbohlman@nd.edu",
    "Anthropology" => "msisk1@nd.edu",
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
    "Chinese Language and Literature" => "Hye-jin.Juhn.1@nd.edu",
    "Chinese Studies" => "Hye-jin.Juhn.1@nd.edu",
    "Classical Languages and Literature" => "dgura@nd.edu",
    "Computer Science" => "jladwig@nd.edu",
    "Dance" => "msteven1@nd.edu",
    "Earth Sciences" => "wbaer@nd.edu",
    "Economics" => "james.ng@nd.edu",
    "Education" => "lmorgan1@nd.edu",
    "Engineering" => "wbaer@nd.edu",
    "English and American Literature" => "djohns27@nd.edu",
    "English Language" => "djohns27@nd.edu",
    "European History" => "Julie.K.Tanaka.10@nd.edu",
    "Film" => "msteven1@nd.edu",
    "Finance" => "shayes1@nd.edu",
    "French Literature" => "dsulli10@nd.edu",
    "Gender Studies" => "lajamie@nd.edu",
    "General Studies" => "dsulli10@nd.edu",
    "Geology, Oceanography, Ecology" => "jladwig@nd.edu",
    "Geology" => "jladwig@nd.edu",
    "Germanic Languages and Literatures" => "rkusmer@nd.edu",
    "History of Science and Technology" => "jross@nd.edu",
    "Irish Studies" => "aclemen1@nd.edu",
    "Italian Literature" => "tbergstr@nd.edu",
    "Japanese Language and Literature" => "Hye-jin.Juhn.1@nd.edu",
    "Japanese Studies" => "Hye-jin.Juhn.1@nd.edu",
    "Journalism" => "rbohlman@nd.edu",
    "Judaica" => "akrieger@nd.edu",
    "Korean Language and Literature" => "Hye-jin.Juhn.1@nd.edu",
    "Korean Studies" => "Hye-jin.Juhn.1@nd.edu",
    "Landscape Architecture" => "jparker9@nd.edu",
    "Language Acquisition" => "sedwards@nd.edu",
    "Latin American History" => "ddressin@nd.edu",
    "Latino Studies" => "ddressin@nd.edu",
    "Law" => "edmonds.7@nd.edu",
    "Library and Information Studies" => "lib-pdc-list@nd.edu",
    "Management" => "shayes1@nd.edu",
    "Marketing" => "shayes1@nd.edu",
    "Mathematics" => "jladwig@nd.edu",
    "Medical Sciences" => "jladwig@nd.edu",
    "Medieval Studies" => "jschneid@nd.edu",
    "Music" => "rsimon1@nd.edu",
    "Nanotechnology" => "jladwig@nd.edu",
    "North American History" => "grugg@nd.edu",
    "Peace Studies" => "jarcher@nd.edu",
    "Philosophy" => "akrieger@nd.edu",
    "Photography" => "msteven1@nd.edu",
    "Physics" => "tmiller5@nd.edu",
    "Polish Studies" => "nlyandre@nd.edu",
    "Political Science" => "jarcher@nd.edu",
    "Program of Liberal Studies" => "lbayard@nd.edu",
    "Psychology" => "csmith@nd.edu",
    "Slavic Languages and Literature" => "nlyandre@nd.edu",
    "Sociology" => "jkayongo@nd.edu",
    "Spanish and Portuguese Literature" => "ddressin@nd.edu",
    "Sports and Games" => "grugg@nd.edu",
    "Technology and Engineering" => "wbaer@nd.edu",
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
