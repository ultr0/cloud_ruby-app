class TodosController < ApplicationController
  # def index
  #   @todos = Todo.all
  #   @project = Project.find(params[:project_id])
  #   @todo = @project.todos.create(comment_params)
  # end

  def create
    @project = Project.find(params[:project_id])
    @todo = @project.todos.create(comment_params)
    # redirect_to
  end

  def show
    @todo = Todo.find(params[:id])
  end

  private
  def todo_params
    params.require(:todo).permit(:text)
  end

end
