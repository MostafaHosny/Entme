class Entertainment < ApplicationRecord
	has_many :ratings , as: :rateable

	validates_presence_of :title, :price
end
