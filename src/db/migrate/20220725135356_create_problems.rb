class CreateProblems < ActiveRecord::Migration[6.1]
  def change
    create_table :problems do |t|
      t.string :title, limit: 30
      t.text :content
      t.string :level, limit: 10

      t.timestamps
    end
  end
end
