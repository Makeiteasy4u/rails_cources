class Domain < ActiveRecord::Base
	validates :title, presence: true, length: {minimum: 3, maximum: 36}	
	validates :description, presence: true, length: {minimum: 3, maximum: 300}
end	