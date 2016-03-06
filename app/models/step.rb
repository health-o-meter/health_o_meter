class Step < ActiveRecord::Base
  validates :date, presence: true

  def self.daily_total
    start = Time.now.beginning_of_day
    stop = Time.now.beginning_of_day
    self.all.select {|e| e.created_at >= start && e.created_at <= stop}
  end

  def self.weekly_total
    start = Time.now.beginning_of_week
    stop = Time.now.end_of_week
    self.all.select {|e| e.created_at >= start && e.created_at <= stop}
  end

  def self.current_month
    start = Time.now.beginning_of_month
    stop = Time.now.end_of_month
    self.all.select {|e| e.created_at >= start && e.created_at <= stop}
  end
end
