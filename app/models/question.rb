class Question < ActiveRecord::Base
  Question.delete_all
  Question.create!(:id => 1, :title => "Do you want to build the next Social Network for Cats?", :lover => "cat", :answer => nil)
  Question.create!(:id => 2, :title => "Do you think dogs should be allowed everywhere people are?", :lover => "cat", :answer => nil)
  Question.create!(:id => 3, :title => "Your middle name is \"Meow\"?", :lover => "cat", :answer => nil)
  Question.create!(:id => 4, :title => "Is Snoop Dog one of your favourite artists?", :lover => "cat", :answer => nil)
  Question.create!(:id => 5, :title => "Do you spend all day watching cat videos?", :lover => "cat", :answer => nil)
  Question.create!(:id => 6, :title => "Do you stop people in the street to pet their dogs?", :lover => "cat", :answer => nil)
end
