class MoviesController < ApplicationController
	def index
		@movies = Movie.all
	end
	def show
		#@artist = Artist.all
		#@album = @artist.albums.all
		begin
			@movie = Movie.find params[:id]
		rescue ActiveRecord::RecordNotFound
			render 'movie_not_found'
		end
	end

	def new
		@movie = Movie.new
	end

	def create
		@movie = Movie.new movie_params
		if @movie.save
			redirect_to @movie
		else
			render 'new'
		end
	end

	private
	def movie_params
		params.require(:movie).permit(:title, :director, :year, :poster)
	end
end
