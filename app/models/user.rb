class User < ActiveRecord::Base
  attr_accessible :brutoUurLoon, :name, :nettoUurLoon
  
  has_many :workhours
end
