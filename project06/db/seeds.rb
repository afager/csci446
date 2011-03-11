# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#   
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Major.create(:name => 'Daley', :city => cities.first)
Role.create(
		:id => 1,
		:name => "admin")
Role.create(
		:id => 2,
		:name => "member")



User.create(
   :username => "administrator",
   :password => "password",
   :password_confirmation => "password",
   :roles_id => 1)
   
 User.create(
   :username => "member",
   :password => "password",
   :password_confirmation => "password",
   :roles_id => 2)
   
   
   