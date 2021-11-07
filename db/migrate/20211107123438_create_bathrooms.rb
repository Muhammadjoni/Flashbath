class CreateBathrooms < ActiveRecord::Migration[6.0]
  def change
    create_table :bathrooms do |t|
      t.string :title
      t.string :address
      t.text :content
      t.references :user, null: false, foreign_key: true
      t.float :lng
      t.float :ltd

      t.timestamps
    end
  end
end
