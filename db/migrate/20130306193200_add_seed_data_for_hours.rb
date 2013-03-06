class AddSeedDataForHours < ActiveRecord::Migration
  def up

    s = Availability::ServicePoint.create!( name: "Circulation and Course Reserves ", code: "circulation")
s.new_hours( {
                 name: "Spring Semester Hours",
                 prepend_text: "",
                 append_text: "",
                 monday: "8 am - 12 am",
                 tuesday: "8 am - 12 am",
                 wednesday: "8 am - 12 am",
                 thursday: "8 am - 12 am",
                 friday: "8 am - 5 pm",
                 saturday: "12 pm - 5 pm",
                 sunday: "12 pm - 12 am",
                 start_date: 1.months.ago,
                 end_date: DateTime.parse("2013-05-11")
             }
)

s = Availability::ServicePoint.create!( name: "Computer Lab", code: "computer_lab")
s.new_hours( {
                 name: "Spring Semester Hours",
                 prepend_text: "",
                 append_text: "",
                 monday: "Open 24 hours",
                 tuesday: "Open 24 hours",
                 wednesday: "Open 24 hours",
                 thursday: "Open 24 hours",
                 friday: "Open till 11pm",
                 saturday: "9am - 7pm",
                 sunday: "Opens at 10am",
                 start_date: 1.months.ago,
                 end_date: DateTime.parse("2013-05-11")
             }
)

s = Availability::ServicePoint.create!( name: "Lower Level ServicePoint Desk", code: "lower_level_service_desk")
s.new_hours( {
                 name: "Spring Semester Hours",
                 prepend_text: "",
                 append_text: "",
                 monday: "9 am - 10 pm",
                 tuesday: "9 am - 10 pm",
                 wednesday: "9 am - 10 pm",
                 thursday: "9 am - 10 pm",
                 friday: "9 am - 5 pm",
                 saturday: "12 pm - 5 pm",
                 sunday: "12 pm - 12 am",
                 start_date: 1.months.ago,
                 end_date: DateTime.parse("2013-05-11")
             }
)

s = Availability::ServicePoint.create!( name: "Medieval Institute", code: "medieval")
s.new_hours( {
                 name: "Spring Semester Hours",
                 prepend_text: "",
                 append_text: "",
                 monday: "8 am - 5 pm",
                 tuesday: "8 am - 5 pm",
                 wednesday: "8 am - 5 pm",
                 thursday: "8 am - 5 pm",
                 friday: "8 am - 5 pm",
                 saturday: "CLOSED",
                 sunday: "CLOSED",
                 start_date: 1.months.ago,
                 end_date: DateTime.parse("2013-05-11")
             }
)

s = Availability::ServicePoint.create!( name: "Music and Media Services Unit ", code: "music_and_media")
s.new_hours( {
                 name: "Spring Semester Hours",
                 prepend_text: "",
                 append_text: "",
                 monday: "8 am - 10 pm",
                 tuesday: "8 am - 10 pm",
                 wednesday: "8 am - 10 pm",
                 thursday: "8 am - 10 pm",
                 friday: "8 am - 10 pm",
                 saturday: "12 pm - 5 pm",
                 sunday: "12 pm - 10 pm",
                 start_date: 1.months.ago,
                 end_date: DateTime.parse("2013-05-11")
             }
)

s = Availability::ServicePoint.create!( name: "Reference Desk", code: "reference")
s.new_hours( {
                 name: "Spring Semester Hours",
                 prepend_text: "",
                 append_text: "",
                 monday: "9 am - 9 pm",
                 tuesday: "9 am - 9 pm",
                 wednesday: "9 am - 9 pm",
                 thursday: "9 am - 9 pm",
                 friday: "9 am - 5 pm",
                 saturday: "12 pm - 5 pm",
                 sunday: "12 pm - 9 pm",
                 start_date: 1.months.ago,
                 end_date: DateTime.parse("2013-05-11")
             }
)

s = Availability::ServicePoint.create!( name: "Special Collection", code: "special_collection")
s.new_hours( {
                 name: "Spring Semester Hours",
                 prepend_text: "",
                 append_text: "",
                 monday: "8 am - 5 pm",
                 tuesday: "8 am - 5 pm",
                 wednesday: "8 am - 5 pm",
                 thursday: "8 am - 5 pm",
                 friday: "8 am - 5 pm",
                 saturday: "CLOSED",
                 sunday: "CLOSED",
                 start_date: 1.months.ago,
                 end_date: DateTime.parse("2013-05-11")
             }
)

s = Availability::ServicePoint.create!( name: "University Archives", code: "archives")
s.new_hours( {
                 name: "Spring Semester Hours",
                 prepend_text: "",
                 append_text: "",
                 monday: "8 am - 5 pm",
                 tuesday: "8 am - 5 pm",
                 wednesday: "8 am - 5 pm",
                 thursday: "8 am - 5 pm",
                 friday: "8 am - 5 pm",
                 saturday: "CLOSED",
                 sunday: "CLOSED",
                 start_date: 1.months.ago,
                 end_date: DateTime.parse("2013-05-11")
             }
)

s = Availability::ServicePoint.create!( name: "Architecture Library", code: "architecture_library")
s.new_hours( {
                 name: "Spring Semester Hours",
                 prepend_text: "",
                 append_text: "",
                 monday: "9 am - Midnight",
                 tuesday: "9 am - Midnight",
                 wednesday: "9 am - Midnight",
                 thursday: "9 am - Midnight",
                 friday: "8 am - 6 pm",
                 saturday: "11 am - 5 pm",
                 sunday: "11 am - Midnight",
                 start_date: 1.months.ago,
                 end_date: DateTime.parse("2013-05-11")
             }
)

s = Availability::ServicePoint.create!( name: "Mahaffey Business Information Center", code: "bic")
s.new_hours( {
                 name: "Spring Semester Hours",
                 prepend_text: "",
                 append_text: "",
                 monday: "8 am - 10 pm",
                 tuesday: "8 am - 10 pm",
                 wednesday: "8 am - 10 pm",
                 thursday: "8 am - 10 pm",
                 friday: "8 am - 5 pm",
                 saturday: "12 pm - 5 pm",
                 sunday: "1 pm - 9 pm",
                 start_date: 1.months.ago,
                 end_date: DateTime.parse("2013-05-11")
             }
)

s = Availability::ServicePoint.create!( name: "Chemistry/Physics Library", code: "chem_phys_library")
s.new_hours( {
                 name: "Spring Semester Hours",
                 prepend_text: "",
                 append_text: "",
                 monday: "8 am - Midnight",
                 tuesday: "8 am - Midnight",
                 wednesday: "8 am - Midnight",
                 thursday: "8 am - Midnight",
                 friday: "8 am - 5 pm",
                 saturday: "CLOSED",
                 sunday: "1 pm - Midnight",
                 start_date: 1.months.ago,
                 end_date: DateTime.parse("2013-05-11")
             }
)

s = Availability::ServicePoint.create!( name: "Engineering Library", code: "engineering_library")
s.new_hours( {
                 name: "Spring Semester Hours",
                 prepend_text: "",
                 append_text: "*Close at 5:00 pm on Friday and all day Saturday on home football weekends.",
                 monday: "8 am - 11pm",
                 tuesday: "8 am - 11pm",
                 wednesday: "8 am - 11pm",
                 thursday: "8 am - 11pm",
                 friday: "8 am - 6 pm",
                 saturday: "1 pm - 5 pm",
                 sunday: "1 pm - 11 pm",
                 start_date: 1.months.ago,
                 end_date: DateTime.parse("2013-05-11")
             }
)

s = Availability::ServicePoint.create!( name: "Kellogg/Kroc Library Information Center", code: "kellogg_library")
s.new_hours( {
                 name: "Spring Semester Hours",
                 prepend_text: "",
                 append_text: "",
                 monday: "1 pm - 5 pm",
                 tuesday: "1 pm - 5 pm",
                 wednesday: "1 pm - 5 pm",
                 thursday: "1 pm - 5 pm",
                 friday: "CLOSED",
                 saturday: "CLOSED",
                 sunday: "CLOSED",
                 start_date: 1.months.ago,
                 end_date: DateTime.parse("2013-05-11")
             }
)


s = Availability::ServicePoint.create!( name: "O\'Meara Mathematics Library", code: "math_library")
s.new_hours( {
                 name: "Spring Semester Hours",
                 prepend_text: "",
                 append_text: "",
                 monday: "9 am - Midnight",
                 tuesday: "9 am - Midnight",
                 wednesday: "9 am - Midnight",
                 thursday: "9 am - Midnight",
                 friday: "9 am - 5 pm",
                 saturday: "1 pm - 5 pm",
                 sunday: "1 pm - Midnight",
                 start_date: 1.months.ago,
                 end_date: DateTime.parse("2013-05-11")
             }
)

s = Availability::ServicePoint.create!( name: "Radiation Reading Room", code: "radiation")
s.new_hours( {
                 name: "Spring Semester Hours",
                 prepend_text: "",
                 append_text: "",
                 monday: "8 am - Midnight",
                 tuesday: "8 am - Midnight",
                 wednesday: "8 am - Midnight",
                 thursday: "8 am - Midnight",
                 friday: "1 pm - 5 pm",
                 saturday: "CLOSED",
                 sunday: "CLOSED",
                 start_date: 1.months.ago,
                 end_date: DateTime.parse("2013-05-11")
             }
)

s = Availability::ServicePoint.create!( name: "Visual Resources Center", code: "visual_resources")
s.new_hours( {
                 name: "Spring Semester Hours",
                 prepend_text: "",
                 append_text: "",
                 monday: "8 am - 6 pm",
                 tuesday: "8 am - 6 pm",
                 wednesday: "8 am - 6 pm",
                 thursday: "8 am - 6 pm",
                 friday: "8 am - 6 pm",
                 saturday: "CLOSED",
                 sunday: "CLOSED",
                 start_date: 1.months.ago,
                 end_date: DateTime.parse("2013-05-11")
             }
)

  end

  def down
    Availability::ServicePoint.delete_all
  end
end
