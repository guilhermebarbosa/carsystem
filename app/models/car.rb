class Car < ActiveRecord::Base
  belongs_to :brand
  belongs_to :carmodel
  
  has_many :proposals
  has_many :attachments, :as => :attachable, :dependent => :destroy
  accepts_nested_attributes_for :attachments, :allow_destroy => true
  
  validates :brand_id, :carmodel_id, :state, :name, :price, :year, :presence => true
  
  STATE = ["Novo", "Usado"]
end