module EntertainmentShared
	extend ActiveSupport::Concern

  	included do
    #------------------------------- Validations --------------------------------
    validates_presence_of :title, :price 
end