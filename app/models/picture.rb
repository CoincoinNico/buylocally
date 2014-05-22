class Picture < ActiveRecord::Base
  belongs_to :article

  has_attached_file :file,
                    :styles => {
                      :thumb=> "100x100#",
                      :small  => "300x300>",
                      :large => "600x600>"
                    }
  validates_attachment_content_type :file, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

  # validates_attachment_presence :image
  # validates_attachment_size :file, :less_than => 5.megabytes

end
