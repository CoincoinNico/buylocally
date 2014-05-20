class Article < ActiveRecord::Base
  has_many :pictures
  has_attached_file :picture
end
