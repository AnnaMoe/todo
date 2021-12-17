require 'rails_helper'

# RSpec.describe Todotask, type: :model do
#   pending "add some examples to (or delete) #{__FILE__}"
# end

describe Todotask, "#completed?" do
  it "returns true if completed_at is set" do
    todo = Todotask.new(completed_at: Time.current)
    # uses rspec to convert #completed? into be_completed
    expect(todo).to be_completed
  end
  it "returns false if completed_at is nil" do
    todo = Todotask.new(completed_at: nil)
    expect(todo).not_to be_completed
  end

describe Todotask, "#complete!" do
  it "update completed_at" do
    todo = Todotask.create!(completed_at: nil)
    todo.complete!
    todo.reload
    expect(todo).to be_completed
  end
end

end
