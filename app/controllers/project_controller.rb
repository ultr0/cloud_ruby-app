class ProjectController < ApplicationController
  def index
    @todos = Project.all
  end

  def show
    @project = Project.find(params[:id])
  end

  def update
    @project = Project.find(params[:id])
  end

  def create
    @project = Project.new
  end
end
