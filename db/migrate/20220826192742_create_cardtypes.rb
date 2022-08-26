class CreateCardtypes < ActiveRecord::Migration[7.0]
  def change
    create_table :cardtypes do |t|
      t.string :card_id
      t.string :type_id

      t.timestamps
    end
  end
end
