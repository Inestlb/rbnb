class CreateCelebrities < ActiveRecord::Migration[7.1]
  def change
    create_table :celebrities do |t|
      t.string :name
      t.integer :price_per_hour
      t.string :location
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
