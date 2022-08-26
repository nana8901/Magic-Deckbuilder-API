class CreateCardsupertypes < ActiveRecord::Migration[7.0]
  def change
    create_table :cardsupertypes do |t|
      t.integer :card_id
      t.integer :supertype_id

      t.timestamps
    end
  end
end
