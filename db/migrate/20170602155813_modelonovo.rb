class Modelonovo < ActiveRecord::Migration[5.0]
  def change
  	remove_column :aulas,:moves
  end
end
