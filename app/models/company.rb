class Company < ActiveRecord::Base
  validates :description, :presence => true
end
