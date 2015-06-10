class SongsController < ApplicationController
	def index
		@songs = Song.search(params[:search])
		if @songs.empty?
			@songs = Song.all
		end
	end

	def show
		begin
		@song = Song.find params[:id]
		rescue ActiveRecord::RecordNotFound
			render 'song_not_found'
		end
	end

	def new
		@movie = Movie.find params[:movie_id]
		@song = Song.new
	end

	def create
		@movie = Movie.find params[:movie_id]
		@song = Song.new song_params
		if @song.save
			redirect_to @movie
		else
			render 'new'
		end
	end

	private
	def song_params
		params.require(:song).permit(:title, :artist, :album)
	end
end
