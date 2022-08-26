class RemoveTypeFromTypes < ActiveRecord::Migration[7.0]
  def change
    remove_column :types, :type, :string
    add_column :types, :type_name, :string
  end
end
