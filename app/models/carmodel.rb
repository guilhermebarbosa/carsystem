class Carmodel < ActiveRecord::Base
  belongs_to :brand
  
  has_many :cars
  
  validates :brand, :name, :presence => true
end
