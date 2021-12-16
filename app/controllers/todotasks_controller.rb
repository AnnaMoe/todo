class TodotasksController < ApplicationController
  def index
    @todos = Todotask.all
  end

  def new
    @todo = Todotask.new
  end

  def create
    Todotask.create(todo_params)
    redirect_to todotasks_path
  end

  private
  def todo_params
    params.require(:todotask).permit(:title)
  end
end
