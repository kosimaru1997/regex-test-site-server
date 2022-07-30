class CreateProblemTestCases < ActiveRecord::Migration[6.1]
  def change
    create_table :problem_test_cases do |t|

      t.string :test_case, null: false
      t.references :problem, index: true, null: false
      t.boolean :is_collect, null: false

      t.timestamps
    end
  end
end
