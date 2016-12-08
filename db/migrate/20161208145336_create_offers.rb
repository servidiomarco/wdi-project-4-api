class CreateOffers < ActiveRecord::Migration[5.0]
  def change
    create_table :offers do |t|
      t.references :user, foreign_key: true
      t.string :title
      t.text :menu
      t.date :date
      t.string :image
      t.float :price
      t.string :cuisine
      t.integer :max_seats
      t.text :address

      t.timestamps
    end
  end
end
