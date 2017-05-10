class CreateAulas < ActiveRecord::Migration[5.0]
  def change
    create_table :aulas do |t|
      t.string :nome
      t.string :conteudo
      t.string :fen
      t.string :moves
      t.integer :usuario_id

      t.timestamps
    end
  end
end
