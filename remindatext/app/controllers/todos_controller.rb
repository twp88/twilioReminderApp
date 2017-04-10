class TodosController < ApplicationController

  def index
    @todos = Todo.all
    @hi = "hi"
  end


end
