class SearchController < ApplicationController
	def index
		@movies = Movie.search(params[:search])
		if @movies.empty?
			render 'movies_result_not_found'
		end
	end

	def movies_result_not_found
		@movies = Movie.all
	end
end
