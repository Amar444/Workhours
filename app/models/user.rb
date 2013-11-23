class User < ActiveRecord::Base
  attr_accessible :hourly_gross, :name, :hourly_net_wage
  validates_presence_of :hourly_gross, :name, :hourly_net_wage
  
  has_many :workhours, inverse_of: :user
  
  def total_net_gain
    workhours.inject(0) { |sum, workhour| sum + workhour.total_gain }
    #staat ong dit
    #sum = 0
    #workhours.each do |workhour|
      # sum += workhour.total_gain
    #end
  end

  def total_hours
    workhours.inject(0) { |sum, workhour| sum + workhour.hours }
  end
end
