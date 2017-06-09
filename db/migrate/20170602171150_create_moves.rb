class CreateMoves < ActiveRecord::Migration[5.0]
  def change
    create_table :moves do |t|
      t.text :from
      t.string :to
      t.references :aula, foreign_key: true

      t.timestamps
    end
  end
end
