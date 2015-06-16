class SearchController < ApplicationController
	def index
		@songs = Song.search(params[:search])
		@movies = Movie.search(params[:search])
		if @songs.empty?
			render 'result_not_found'
		elsif @movies.empty?
			render 'result_not_found'
		end
	end
end
