class AddRating < ActiveRecord::Migration[7.1]
  def change
    add_column :celebrities, :rating, :float
  end
end
