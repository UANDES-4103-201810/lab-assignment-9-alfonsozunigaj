class AddMovieToAddress < ActiveRecord::Migration[5.1]
  def change
    add_reference :addresses, :movie, foreign_key: true
  end
end
