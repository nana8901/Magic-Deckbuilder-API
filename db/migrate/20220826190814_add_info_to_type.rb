class AddInfoToType < ActiveRecord::Migration[7.0]
  def change
    add_column :types, :type, :string
  end
end
