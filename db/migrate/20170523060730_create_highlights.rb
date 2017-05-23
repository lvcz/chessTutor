class CreateHighlights < ActiveRecord::Migration[5.0]
  def change
    create_table :highlights do |t|
      t.string :peca
      t.string :valor
      t.string :cor

      t.timestamps
    end
  end
end
