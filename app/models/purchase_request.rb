class PurchaseRequest < ActiveRecord::Base

  SUBJECTS_EMAILS = {
    "Accounting" => "bpietras@nd.edu",
    "Africana Studies" => "lmorgan1@nd.edu",
    "Agriculture" => "jladwig@nd.edu",
    "American History" => "rbohlman@nd.edu",
    "American Studies" => "rbohlman@nd.edu",
    "Anthropology" => "msisk1@nd.edu",
    "Arabic Studies" => "jross@nd.edu",
    "Architecture" => "jparker9@nd.edu",
    "Art, Art History and Design" => "nlyandre@nd.edu",
    "Astronomy" => "tmiller5@nd.edu",
    "Auxiliary Sciences of History" => "ljordan@nd.edu",
    "Biochemistry" => "tmiller5@nd.edu",
    "Biology and Life Sciences" => "jladwig@nd.edu",
    "Books, Bibliography" => "MonoAcqOrder@nd.edu",
    "Business" => "bpietras@nd.edu",
    "Byzantine Studies" => "dgura@nd.edu",
    "Catholic Studies" => "jmcmanu1@nd.edu",
    "Celtic Languages and Literature" => "aclemen1@nd.edu",
    "Chemistry" => "tmiller5@nd.edu",
    "Chinese Language and Literature" => "Hye-jin.Juhn.1@nd.edu",
    "Chinese Studies" => "Hye-jin.Juhn.1@nd.edu",
    "Classical Languages and Literature" => "dgura@nd.edu",
    "Computer Science" => "wbaer@nd.edu",
    "Dance" => "tgillasp@nd.edu",
    "Earth Sciences" => "wbaer@nd.edu",
    "Economics" => "bchiewph@nd.edu",
    "Education" => "lmorgan1@nd.edu",
    "Engineering" => "wbaer@nd.edu",
    "English and American Literature" => "djohns27@nd.edu",
    "English Language" => "djohns27@nd.edu",
    "Environmental Sciences" => "jladwig@nd.edu",
    "European History" => "jschneid@nd.edu",
    "Film" => "djohns27@nd.edu",
    "Finance" => "bpietras@nd.edu",
    "French Literature" => "Monica.Moore.238@nd.edu",
    "Gender Studies" => "Rachel.Bohlmann.2@nd.edu",
    "General Studies" => "MonoAcqOrder@nd.edu",
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
    "Latin American History" => "ehosselk@nd.edu",
    "Latino Studies" => "ehosselk@nd.edu",
    "Law" => "klein.26@nd.edu",
    "Library and Information Studies" => "lib-pdc-list@nd.edu",
    "Management" => "bpietras@nd.edu",
    "Marketing" => "bpietras@nd.edu",
    "Mathematics" => "jladwig@nd.edu",
    "Medical Sciences" => "jladwig@nd.edu",
    "Medieval Studies" => "jschneid@nd.edu",
    "Music" => "tgillasp@nd.edu",
    "North American History" => "rbohlman@nd.edu",
    "Peace Studies" => "mrobiso2@nd.edu",
    "Philosophy" => "akrieger@nd.edu",
    "Photography" => "nlyandre@nd.edu",
    "Physics" => "tmiller5@nd.edu",
    "Polish Studies" => "nlyandre@nd.edu",
    "Political Science" => "mrobiso2@nd.edu",
    "Program of Liberal Studies" => "akrieger@nd.edu",
    "Psychology" => "csmith@nd.edu",
    "Slavic Languages and Literature" => "nlyandre@nd.edu",
    "Sociology" => "jkayongo@nd.edu",
    "Spanish and Portuguese Literature" => "ehosselk@nd.edu",
    "Sports and Games" => "aclemen1@nd.edu",
    "Technology and Engineering" => "wbaer@nd.edu",
    "Television" => "djohns27@nd.edu",
    "Theatre" => "djohns27@nd.edu",
    "Theology" => "akrieger@nd.edu"
  }

  SUBJECTS = SUBJECTS_EMAILS.keys

  NOTIFICATION_PREFERENCES = ["Email", "Phone", "Campus Mail"]

  FORMATS = ["Book (ebook preferred)", "Book (print preferred)", "Journal", "Microform", "CD", "DVD", "Blu-ray", "Database", "Other"]

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
