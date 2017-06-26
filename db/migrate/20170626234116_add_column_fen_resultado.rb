class AddColumnFenResultado < ActiveRecord::Migration[5.0]
  def change
  	add_column :moves, :fen_resultado, :string
  end
end
