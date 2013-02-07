class Availability::RegularHours < Availability::Hours
  validates :monday, :tuesday, :wednesday, :thursday, :friday, :saturday, :sunday, :presence => true

end