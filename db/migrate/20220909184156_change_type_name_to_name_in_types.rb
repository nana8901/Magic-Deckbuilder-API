class ChangeTypeNameToNameInTypes < ActiveRecord::Migration[7.0]
  def change
    remove_column :types, :type_name, :string
    add_column :types, :name, :string
  end
end
