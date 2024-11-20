class AddImagesToCelebrities < ActiveRecord::Migration[7.1]
  def change
    add_column :celebrities, :images, :string
  end
end
