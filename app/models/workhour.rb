class Workhour < ActiveRecord::Base
  attr_accessible :user_id, :date_of_workhour, :hours, :factor, :net_wage, :user
  belongs_to :user
  
  validates_presence_of :user
  
  before_save :net_wage_from_user
  
  def net_wage_from_user
   net_wage = user.hourly_net_wage
    
  end
end
