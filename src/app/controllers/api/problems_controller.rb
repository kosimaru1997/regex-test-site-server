class Api::ProblemsController < ApplicationController

  def index
    problems = Problem.all.to_json(only: [:id, :title, :content])
    render json: problems
  end

  def show
    problem = Problem.includes(:problem_test_cases).find(params[:id])
    render json: problem.to_json(include: [:problem_test_cases])
  end

  def check
    byebug
    regex = Regexp.compile(params[:regex])
    test_cases = Problem.find(params[:id]).problem_test_cases
    collect_cases = test_cases.filter(&:is_collect)
    checked_cases = test_cases.filter { |test| regex.match?(test.test_case) }
    is_collect_regex = collect_cases == checked_cases
    render json: { is_collect_regex:, checked_cases: }
  end

end
