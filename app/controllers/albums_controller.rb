class AlbumsController < ApplicationController
	def show
		begin
			@artist = Artist.find params[:artist_id]
			@album = @artist.albums.find params[:id]
		rescue ActiveRecord::RecordNotFound
			render 'album_not_found'
		end
	end
end
