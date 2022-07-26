class CreateProblems < ActiveRecord::Migration[6.1]
  def change
    create_table :problems do |t|
      t.string :title, limit: 30, null: false
      t.text :content, null: false
      t.string :level, limit: 10, null: false
      t.text :test_case, null: false

      t.timestamps
    end
  end
end
