class AddColumnToBathroom < ActiveRecord::Migration[6.0]
  def change
    add_column :bathrooms, :price, :integer
  end
end
