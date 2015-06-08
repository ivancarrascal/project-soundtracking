class SiteController < ApplicationController
	def index
		@movies = Movie.order(created_at: :desc)
		@songs = Song.order(created_at: :desc)
	end
end
