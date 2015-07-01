class SiteController < ApplicationController
	def index
		@movies = Movie.order(created_at: :desc).limit(4)
		@songs = Song.order(created_at: :desc).limit(4)
		@artists = Artist.order(created_at: :desc).limit(4)
		@albums = Album.order(created_at: :desc).limit(4)
	end
end
