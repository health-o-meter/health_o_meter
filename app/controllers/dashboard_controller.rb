class DashboardController < ApplicationController
  def index
    @weights = Weight.all

    @daily_steps = Step.daily_total
    @weekly_steps = Step.weekly_total
    @monthly_steps = Step.monthly_total

    @daily_grubs = Grub.daily_total
    @daily_exercises = Exercise.daily_total

    @daily_net_calories = @daily_grubs - @daily_exercises

  end
end
