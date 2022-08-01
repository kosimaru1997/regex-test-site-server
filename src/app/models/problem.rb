class Problem < ApplicationRecord
  has_many :problem_test_cases, dependent: :destroy
end
