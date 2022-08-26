class AddNameToSupertype < ActiveRecord::Migration[7.0]
  def change
    add_column :supertypes, :name, :string
  end
end
