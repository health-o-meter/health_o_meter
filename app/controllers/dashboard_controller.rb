class DashboardController < ApplicationController
  def index
    @weights = Weight.all
  end
end
