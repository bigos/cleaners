class AddGeoLocationToRatings < ActiveRecord::Migration
  def change
    add_column :ratings, :latitude, :float
    add_column :ratings, :longitude, :float
  end
end
