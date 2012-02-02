class Operation < ActiveRecord::Base
  validates :description, :presence => true
end
