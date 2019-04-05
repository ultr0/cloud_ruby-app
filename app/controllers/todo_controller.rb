class TodoController < ApplicationController

  def index
    @todos = Todo.all
  end

  def show
    @todo = Todo.find(params[:id])
  end

  def update
    @todo = Todo.find(params[:id])
  end

  def create
    @todo = Todo.new
  end
end

