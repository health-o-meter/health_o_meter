require 'test_helper'

class DashboardControllerTest < ActionController::TestCase
  # test "should get index" do
  #   get :index
  #   assert_response :success
  # end

test "Test Daily Net Calories" do
  get :index
  grub = Grub.create!(amount: 500, date: DateTime.now)
  calories = Exercise.create!(amount: 100, date: DateTime.now)

byebug
  assert_equal 400, @daily_net_calories
end


end
