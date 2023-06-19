class CreateDevelopers < ActiveRecord::Migration[7.0]
  def change
    create_table :developers do |t|
      t.string :first_name
      t.string :last_name
      t.text :description
      t.string :city
      t.string :image_url
      t.integer :price_per_day
      t.float :rating
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
