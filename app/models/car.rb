class Car < ActiveRecord::Base
  belongs_to :brand
  belongs_to :carmodel
  
  has_many :proposals
  has_many :attachments, :as => :attachable, :dependent => :destroy
  accepts_nested_attributes_for :attachments, :allow_destroy => true
  
  STATE = ["Novo", "Usado"]
end