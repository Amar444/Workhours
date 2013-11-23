class User < ActiveRecord::Base
  attr_accessible :hourly_gross, :name, :hourly_net_wage
  validates_presence_of :hourly_gross, :name, :hourly_net_wage
  
  has_many :workhours, inverse_of: :user
end
