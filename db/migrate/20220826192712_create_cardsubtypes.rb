class CreateCardsubtypes < ActiveRecord::Migration[7.0]
  def change
    create_table :cardsubtypes do |t|

      t.timestamps
    end
  end
end
