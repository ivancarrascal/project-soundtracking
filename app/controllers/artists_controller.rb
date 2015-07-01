class ArtistsController < ApplicationController
	def index
		
	end

	def show
		begin
		@artist = Artist.find params[:id]
		rescue ActiveRecord::RecordNotFound
			render 'movie_not_found'
		end
	end
end
