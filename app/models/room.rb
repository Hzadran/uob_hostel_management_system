class Room < ApplicationRecord
  belongs_to :hostel_block
  has_many :students
  
end
