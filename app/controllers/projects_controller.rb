class ProjectsController < ApplicationController
  def index

    @projects = Project.all
    # puts @projects
    # @project = Project.new
  end

  def show
    @project = Project.find(params[:id])
  end

  def new
    @project = Project.new
  end

  def edit
    @project = Project.find(params[id])
  end
end
