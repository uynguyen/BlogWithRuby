class Article < ActiveRecord::Base
	after_initialize :init
	def init
		self.view ||= 0

	end
	def self.search(query)
		where("title like ?", "%#{query}%")
	end
	
end
