class Project < ActiveRecord::Base
  #this also define the tickets methods and also others like build methods
  # the build method is eql to new object
  # Assosiactions
  has_many :tickets
  
  validates :name , :presence => true
  
end
