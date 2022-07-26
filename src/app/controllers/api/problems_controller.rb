class Api::ProblemsController < ApplicationController
  include ExceptionHandler

  def index
    @problems = Problem.all.to_json(only: [:id, :title, :content])
    render json: @problems
  end

  def show
    @problem = Problem.find(params[:id]).to_json(except: [:created_at, :updated_at])
    render json: @problem
  end

end
