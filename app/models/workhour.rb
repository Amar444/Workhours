class Workhour < ActiveRecord::Base
  attr_accessible :user_id, :day, :month, :year, :hours, :factor, :nettoLoon
  
  belongs_to :user
end
