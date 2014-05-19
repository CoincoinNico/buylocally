class ArticleImage < ActiveRecord::Base
  belongs_to :article
  has_attached_file :photo, :styles => { :small => “150×150>”, :large => “320×240>” }
  validates_attachment_presence : photo
  validates_attachment_size : photo, :less_than => 5.megabytes
end
