class TodosController < ApplicationController

  def index
    @todo = Todo.all
  end

  def show
    @todo = Todo.find(params[:id])
  end

  def new
    @todo = Todo.create(content: params[:content], is_completed: params[:is_completed])
  end

end
