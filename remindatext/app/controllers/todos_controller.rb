class TodosController < ApplicationController

  def index
    @todo = Todo.new
  end

  def create
    @todo = Todo.create(todo_params)
    if @todo.save
      redirect_to '/todos'
    else
      render 'new'
    end
  end

  private
  def todo_params
    params.require(:todo).permit(:date, :time, :activity)
  end


end
