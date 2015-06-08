class CreateMoviesSongs < ActiveRecord::Migration
  def change
    create_table :movies_songs do |t|
    	t.integer :movie_id
    	t.integer :song_id
    end
  end
end
