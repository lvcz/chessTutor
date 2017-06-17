class ChangeColumnsMoves < ActiveRecord::Migration[5.0]
  def change
  	remove_column :moves, :from
  	add_column :moves , :pontos ,:integer
  	add_column :moves , :nivel ,:integer
  end
end
