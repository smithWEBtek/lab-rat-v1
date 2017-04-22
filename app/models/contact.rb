class Contact < ApplicationRecord
  mount_uploader :image, ImageUploader
  belongs_to :company

  def short_name
    self.username
  end
end