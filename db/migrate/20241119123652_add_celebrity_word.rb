class AddCelebrityWord < ActiveRecord::Migration[7.1]
  def change
    add_column :celebrities, :word, :string
  end
end
