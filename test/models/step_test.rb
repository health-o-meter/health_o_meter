require 'test_helper'

class StepTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "daily step count" do
    step1 = Step.create!(amount: 2, date: DateTime.now)
    step2 = Step.create!(amount: 3, date: DateTime.now)
    assert_equal 5, Step.daily_total
  end

  test "weekly step count" do
    step1 = Step.create!(amount: 2, date: DateTime.now)
    step2 = Step.create!(amount: 3, date: DateTime.now)
    assert_equal 5, Step.weekly_total
  end

  test "monthly step count" do
    step1 = Step.create!(amount: 2, date: DateTime.now)
    step2 = Step.create!(amount: 3, date: DateTime.now)
    assert_equal 5, Step.monthly_total
  end

end
