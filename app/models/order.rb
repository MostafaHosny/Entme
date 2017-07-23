class Order < ApplicationRecord
  belongs_to :user
  belongs_to :entertainment
  
  validates_presence_of :user, :entertainment
end
