class CompletionsController < ApplicationController
  def create
    # .touch looks at timestamp, sets it to the current time & persists the record
    current_user.todos.find(params[:todotask_id]).touch :completed_at
    redirect_to todotasks_path
  end
end
