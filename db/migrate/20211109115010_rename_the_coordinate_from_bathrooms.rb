class RenameTheCoordinateFromBathrooms < ActiveRecord::Migration[6.0]
  def change
    rename_column :bathrooms, :lng, :longitude
    rename_column :bathrooms, :ltd, :latitude
  end
end
