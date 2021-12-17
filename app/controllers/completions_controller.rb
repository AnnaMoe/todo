class CompletionsController < ApplicationController
  def create
    # .touch looks at timestamp, sets it to the current time & persists the record
    todo.touch :completed_at
    redirect_to todotasks_path
  end

  private
  def todo
    current_user.todos.find(params[:todotask_id])
  end
end
