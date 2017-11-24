class Student < ApplicationRecord
mount_uploader :image, ImageUploader

  belongs_to :session
  belongs_to :hostel_block
  belongs_to :room

  def self.search(search)
  where("cnic_no LIKE ?", "%#{search}%")

end

end
