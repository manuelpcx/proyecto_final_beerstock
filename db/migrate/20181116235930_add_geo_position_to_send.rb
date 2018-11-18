class AddGeoPositionToSend < ActiveRecord::Migration[5.2]
  def change
    add_column :sends, :latitude, :float
    add_column :sends, :longitude, :float
  end
end
