class TodosController < ApplicationController

  def show
    @todo = Todo.find(params[:id])
  end

  private
  def todo_params
    params.require(:todo).permit(:text)
  end

end
