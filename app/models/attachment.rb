class Attachment < ActiveRecord::Base

  MAX_FILESIZE = 2.megabytes

  belongs_to :attachable, :polymorphic => true

  delegate :path, :url, :content_type, :to => :asset

  has_attached_file :asset, :styles => {
    :thumb => "130x130#",
    :thumb_interno => "64x48#",
    :large => "320x215#"
  }
  validates_attachment_presence :asset
  validates_attachment_size :asset, :less_than => MAX_FILESIZE

end