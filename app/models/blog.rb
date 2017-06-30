class Blog < ActiveRecord::Base
	validates :title, presence: true, length: {minimum:4, maximum:30}
	validates :description, presence: true, length: {minimum:3, maximum: 300} 
	
	
end	