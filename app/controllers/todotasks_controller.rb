class TodotasksController < ApplicationController
  before_action :authenticate

  def index
    @todos = current_user.todos
  end

  def new
    @todo = Todotask.new
  end

  def create
    current_user.todos.create(todo_params)
    redirect_to todotasks_path
  end

  private
  def todo_params
    params.require(:todotask).permit(:title, :email)
  end
end
