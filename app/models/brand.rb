class Brand < ActiveRecord::Base
  has_many :carmodels
  
  has_many :cars
  
  validates :name, :presence => true
end
