# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Role.delete_all
role1=Role.create({:id => 1, :role_description => 'user'})
role2=Role.create({:id => 2, :role_description => 'it_user'})
role3=Role.create({:id => 3, :role_description => 'admin'})
