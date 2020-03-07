class CreateCards < ActiveRecord::Migration[5.2]
  def change
    create_table :cards do |t|
      t.belongs_to :board, foreign_key: true
      t.string :goal
      t.string :summary

      t.timestamps
    end
  end
end
