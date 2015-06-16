class Movie < ActiveRecord::Base
	has_and_belongs_to_many :songs
	def self.search(search)
		where('title LIKE ?', "%#{search}%")
	end
end
