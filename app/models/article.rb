class Article < activateRecord::Base
	validates :title, presence: true, length: {minimum: 4, maximum: 20}
	validates :description, presence: true, length: {minimum: 4, maximum: 300}
	
	
end	