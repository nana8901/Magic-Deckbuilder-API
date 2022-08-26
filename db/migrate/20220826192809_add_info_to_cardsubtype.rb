class AddInfoToCardsubtype < ActiveRecord::Migration[7.0]
  def change
    add_column :cardsubtypes, :card_id, :integer
    add_column :cardsubtypes, :subtype_id, :integer
  end
end
