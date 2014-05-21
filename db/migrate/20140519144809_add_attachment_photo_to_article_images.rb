class AddAttachmentPhotoToArticleImages < ActiveRecord::Migration
  def self.up
    change_table :article_images do |t|
      t.attachment :photo
    end
  end

  def self.down
    drop_attached_file :article_images, :photo
  end
end
