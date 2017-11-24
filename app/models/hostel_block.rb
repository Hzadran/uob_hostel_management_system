class HostelBlock < ApplicationRecord
	has_many :students
	has_many :rooms
end
