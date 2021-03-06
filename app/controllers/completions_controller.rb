class CompletionsController < ApplicationController
  def create
    # .touch looks at timestamp, sets it to the current time & persists the record
    todo.complete!
    redirect_to todotasks_path
  end

  def destroy
    todo.mark_incomplete!
    redirect_to todotasks_path
  end

  private
  def todo
    current_user.todos.find(params[:todotask_id])
  end
end
