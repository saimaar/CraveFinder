class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.integer :rating
      t.string :comment
      t.belongs_to :restaurant
      t.belongs_to :user
      t.timestamps
    end
  end
end
