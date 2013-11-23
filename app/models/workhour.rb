class Workhour < ActiveRecord::Base
  attr_accessible :user_id, :date_of_workhour, :hours, :factor, :net_wage, :user
  belongs_to :user, inverse_of: :workhours
  
  validates_presence_of :user, :date_of_workhour, :hours, :factor
  
  before_create :net_wage_from_user
  
  def net_wage_from_user
    write_attribute(:net_wage, user.hourly_net_wage)    
  end
end
