class Entertainment < ApplicationRecord
	has_many :ratings , as: :rateable
end
