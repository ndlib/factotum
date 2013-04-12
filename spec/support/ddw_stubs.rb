module DDWStubs
  def stub_ddw_quicksearch_terms
    terms = QUICKSEARCH_TERMS.collect do |term_name|
      DDWTerm.new.tap do |term|
        term.stub(:term_name).and_return { term_name }
      end
    end
    DDWTerm.stub(:quicksearch_terms).and_return{ terms }
  end

  QUICKSEARCH_TERMS = [
    "Aerospace Engineering",
    "Africana Studies",
    "American Studies",
    "Anthropology",
    "Architecture",
    "Art, Art History and Design",
    "Asian Studies",
    "Biology and Life Sciences",
    "Biomedical Engineering",
    "Business (General)",
    "Catholic Studies",
    "Chemical and Biomolecular Engineering",
    "Civil Engineering",
    "Computer Engineering",
    "Economics",
    "Education",
    "Electrical Engineering",
    "Engineering (General)",
    "English Language and Literature",
    "Environmental Engineering",
    "Film",
    "French Language and Literature",
    "General and Multidisciplinary",
    "Geology",
    "German Language and Literature",
    "History (U.S. and Canada)",
    "History (World)",
    "Irish Language and Literature",
    "Irish Studies",
    "Italian Language and Literature",
    "Latino Studies",
    "Library and Information Science",
    "Materials Science (including Biomaterials)",
    "Mathematics",
    "Mechanical Engineering",
    "Medicine and Health",
    "Music",
    "Nanotechnology",
    "Peace Studies",
    "Philosophy",
    "Physics",
    "Political Science",
    "Portuguese Language and Literature",
    "Psychology",
    "Sociology",
    "Spanish Language and Literature",
    "Sports Studies",
    "Television",
    "Theatre",
    "Theology and Religion"
  ]
end
