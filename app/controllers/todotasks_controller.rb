class TodotasksController < ApplicationController
  before_action :authenticate

  def index
    @todos = Todotask.where(email: session[:current_email])
  end

  def new
    @todo = Todotask.new
  end

  def create
    Todotask.create(todo_params.merge(email: session[:current_email]))
    redirect_to todotasks_path
  end

  private
  def todo_params
    params.require(:todotask).permit(:title, :email)
  end
end
