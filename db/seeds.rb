# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create :username => "Natalia", :email => "natalia@test.com", :password => "test", :score => 0
User.create :username => "Test", :email => "test@test.com", :password => "test", :score => 9999
User.create :username => "User", :email => "user@test.com", :password => "test", :score => 8888
User.create :username => "Hello", :email => "hello@test.com", :password => "test", :score => 7777
User.create :username => "Hola", :email => "hola@test.com", :password => "test", :score => 6666
User.create :username => "Name", :email => "name@test.com", :password => "test", :score => 5555

Course.create :title => "MARC hero", :description => "Learn to catalogue with Machine Readable Cataloging", :duration => "X hours", :level => "Beginner", :logo => "/assets/badge_id_3.png"
Course.create :title => "AACR2 hero", :description => "Learn to catalogue with the Anglo American Cataloguing Rules 2", :duration => "X hours", :level => "Beginner", :logo => "/assets/badge_id_2.png"
Course.create :title => "RDA hero", :description => "Learn to catalogue with Resource Description and Access", :duration => "X hours", :level => "Beginner", :logo => "/assets/badge_id_1.png"

Badge.create :name => "RDA hero", :description => "Congratulations for completing the RDA course!", :criteria => "Completed RDA hero path.", :image => "URL"
Badge.create :name => "FRBR: WEMI basics", :description => "Congratulations for completing the WEMI lesson!", :criteria => "Completed the lessons and activities related to WEMI.", :image => "URL"
Badge.create :name => "RDA title", :description => "Congratulations for completing the RDA title lesson!", :criteria => "Completed the lessons and activities related to RDA title.", :image => "URL"

