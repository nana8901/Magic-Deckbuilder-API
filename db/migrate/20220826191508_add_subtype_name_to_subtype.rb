class AddSubtypeNameToSubtype < ActiveRecord::Migration[7.0]
  def change
    add_column :subtypes, :subtype_name, :string
  end
end
