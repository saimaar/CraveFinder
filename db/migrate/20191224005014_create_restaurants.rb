class CreateRestaurants < ActiveRecord::Migration[6.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :image
      t.string :contact
      t.string :email
      t.belongs_to :category
      t.belongs_to :location
      t.timestamps
    end
  end
end
