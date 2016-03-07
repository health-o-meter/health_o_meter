require 'test_helper'

class StepTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "daily step count" do
    step1 = Step.create!(taken_steps: 2, date: DateTime.now)
    step2 = Step.create!(taken_steps: 3, date: DateTime.now)
    assert_equal 5, Step.daily_total
  end

end
