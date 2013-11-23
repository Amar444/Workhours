class Workhour < ActiveRecord::Base
  attr_accessible :user_id, :date_of_workhour, :hours, :factor, :net_wage
  
  belongs_to :user
end
