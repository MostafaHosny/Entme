class Rating < ApplicationRecord
  belongs_to :user
  belongs_to :rateable ,  polymorphic: true
  #------------------------------- Validations --------------------------------

  validates_presence_of :user , :rateable, :stars
  validates_uniqueness_of :user_id, scope: [:user_id, :rateable_id]
  validates :stars,
            allow_blank: true,
            numericality: {
              only_integer: true, greater_than_or_equal_to: 0,
              less_than_or_equal_to: 5
            }
end
