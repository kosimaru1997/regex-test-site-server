class Api::ProblemsController < ApplicationController

  def index
    @problems = Problem.all.to_json(only: [:id, :title, :content])
    render json: @problems
  end

end
