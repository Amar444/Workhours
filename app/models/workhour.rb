class Workhour < ActiveRecord::Base
  attr_accessible :user_id, :date_of_workhour, :hours, :factor, :nettoLoon
  
  belongs_to :user
end
