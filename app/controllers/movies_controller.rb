class MoviesController < ApplicationController
	def index
		@movies = Movie.all
	end
	def show
		begin
		@movie = Movie.find params[:id]
		rescue ActiveRecord::RecordNotFound
			render 'movie_not_found'
		end
	end
end
