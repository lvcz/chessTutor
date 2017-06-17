class AddAncestryToMoves < ActiveRecord::Migration[5.0]
  def change
  	add_column :moves, :ancestry, :string
  	add_index :moves, :ancestry
  end
end
