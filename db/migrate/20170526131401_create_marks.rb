class CreateMarks < ActiveRecord::Migration[5.0]
  def change
    create_table :marks do |t|
      t.string :quadro
      t.string :valor
      t.string :cor
      t.references :aula, foreign_key: true

      t.timestamps
    end
  end
end
