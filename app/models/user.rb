class User < ActiveRecord::Base
  attr_accessible :hourly_gross, :name, :hourly_net_wage
  
  has_many :workhours
end
