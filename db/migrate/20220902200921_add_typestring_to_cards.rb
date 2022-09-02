class AddTypestringToCards < ActiveRecord::Migration[7.0]
  def change
    add_column :cards, :type, :string
  end
end
