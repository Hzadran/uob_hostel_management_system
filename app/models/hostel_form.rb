class HostelForm < ApplicationRecord
	mount_uploader :image, ImageUploader

 validates :name, presence: true
 validates :father_name, presence: true
 validates  :cnic_number, presence: true , numericality: { only_integer: true },length: { maximum: 13}
 validates :mobile_number, presence: true , numericality: { only_integer: true },length: { maximum: 11}
 validates :emergency_mb_number, presence: true
validates :university_registration_number, presence: true


validates :hostel_fees, presence: true
 validates :chalan_number, presence: true
validates :pay_date, presence: true
validates :bank, presence: true

validates :local, presence: true
 validates :city, presence: true
validates :postel_address, presence: true
validates :permanent_address, presence: true

validates :religion, presence: true
 validates :previous_block_no, presence: true
validates :previous_room_no, presence: true
validates :new_block_no, presence: true
validates :new_room_no, presence: true
validates_processing_of :image
validate :image_size_validation

private
	def image_size_validation
		errors[:image] << "should be less than 500KB" if image.size > 0.5.megabytes


end
end

HostelForm.create(name: "John Doe").valid? # => true
HostelForm.create(name: nil).valid? # => false

HostelForm.create(father_name: "John Doe").valid? # => true
HostelForm.create(father_name: nil).valid? # => false

HostelForm.create(cnic_number: "0234-5678-910-1").valid? # => true
HostelForm.create(cnic_number: nil).valid? # => false

HostelForm.create(mobile_number: "0123-4567890").valid? # => true
HostelForm.create(mobile_number: nil).valid? # => false
