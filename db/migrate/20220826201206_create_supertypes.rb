class CreateSupertypes < ActiveRecord::Migration[7.0]
  def change
    create_table :supertypes do |t|

      t.timestamps
    end
  end
end
