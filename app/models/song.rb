class Song < ActiveRecord::Base
	has_and_belongs_to_many :movies
	def self.search(search)
		where('title LIKE ?', "%#{search}%")
	end
end
