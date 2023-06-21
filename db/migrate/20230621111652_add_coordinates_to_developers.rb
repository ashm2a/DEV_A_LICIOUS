class AddCoordinatesToDevelopers < ActiveRecord::Migration[7.0]
  def change
    add_column :developers, :latitude, :float
    add_column :developers, :longitude, :float
  end
end
