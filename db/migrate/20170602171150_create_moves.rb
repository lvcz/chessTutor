class CreateMoves < ActiveRecord::Migration[5.0]
  def change
    create_table :moves do |t|
      t.string :fen_resultado
      t.string :fen_esperado
      t.string :fen_computador
      t.references :aula, foreign_key: true
      t.integer :pontos
      t.integer :nivel
      t.string :mensagem
      t.boolean :final
      t.timestamps
    end
  end
end
