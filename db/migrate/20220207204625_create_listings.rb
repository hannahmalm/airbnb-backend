class CreateListings < ActiveRecord::Migration[6.1]
  def change
    create_table :listings do |t|
      t.string :title
      t.string :host_name
      t.integer :beds
      t.integer :baths
      t.string :image_url
      t.decimal :base_price
      t.string :amenity_description
      t.integer :location_id

      t.timestamps
    end
  end
end
