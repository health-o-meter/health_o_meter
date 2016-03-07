class DashboardController < ApplicationController
  def index
    @weights = Weight.all

    @daily_steps = Step.daily_total
    @weekly_steps = Step.weekly_total
    @monthly_steps = Step.current_month

  end
end
