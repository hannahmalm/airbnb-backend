class CreateLocations < ActiveRecord::Migration[6.1]
  def change
    create_table :locations do |t|
      t.string :city
      t.string :state
      t.string :city_image
  
      t.timestamps
    end
  end
end
