class RemoveSubtypeNameFromSubtype < ActiveRecord::Migration[7.0]
  def change
    remove_column :subtypes, :subtype_name, :string
    add_column :subtypes, :name, :string
  end
end
