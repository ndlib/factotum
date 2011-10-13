# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Emanuel', :city => cities.first)

selector_netids = ["jarcher", "lbayard", "tbergstr", "cszambel", "aclemen1", "gdannell", "ddressin", "lfuderer", "shayes1", "sedwards", "ljordan", "jkayongo", "akrieger", "rkusmer", "jladwig", "nlyandre", "jmatthe2", "jmcmanu1", "tmiller5", "jparker9", "gporter", "grugg", "csmith", "fsmith3", "msmyth", "msteven1", "dsulliv8","jross"]

selector_netids.each do |netid|
  if Selector.where(:netid => netid).count == 0
    Selector.create(:netid => netid)
  end
end
