# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#   
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Major.create(:name => 'Daley', :city => cities.first)
Role.create(:access_level => "admin" )
Role.create(:access_level => "member" )


User.create(
   :username => "administrator",
   :password => "password",
   :password_confirmation => "password",
   :role_id => Role.create(:name => "admin").id)
   
 User.create(
   :username => "member",
   :password => "password",
   :password_confirmation => "password",
   :role_id => Role.create(:name => "member").id)