class Post < ActiveRecord::Base
  
  attr_accessible :name, :email, :message

  validates :name, :presence => true, :length => {:minimum => 3, :maximum => 25}
  validates :email, :presence => true, :length => {:minimum => 7, :maximum => 50}
  validates :message, :presence => true, :length => {:minimum => 3, :maximum => 150}, :format => { :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i } 

end
