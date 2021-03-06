class SongsController < ApplicationController
	def index
		@album = Album.find params[:album_id]
		@songs = @album.songs.search(params[:search])
		if @songs.empty?
			render 'result_not_found'
		end
	end

	def show
		begin
			@artist = Artist.find params[:artist_id]
			@album = @artist.albums.find params[:album_id]
			@song = @album.songs.find params[:id]
		rescue ActiveRecord::RecordNotFound
			render 'song_not_found'
		end
	end

	def result_not_found
		@songs = Song.all
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
