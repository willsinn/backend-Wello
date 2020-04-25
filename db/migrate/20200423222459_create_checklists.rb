class CreateChecklists < ActiveRecord::Migration[5.2]
  def change
    create_table :checklists do |t|
      t.belongs_to :task, foreign_key: true
      t.string :title

      t.timestamps
    end
  end
end
