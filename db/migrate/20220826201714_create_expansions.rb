class CreateExpansions < ActiveRecord::Migration[7.0]
  def change
    create_table :expansions do |t|
      t.string :full_name
      t.string :abbreviation

      t.timestamps
    end
  end
end
