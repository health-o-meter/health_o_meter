class Step < ActiveRecord::Base
  validates :date, presence: true

  def self.daily_total
    current_day = Time.now.day
    current_month = Time.now.mon
    daily = []
    self.all.each do |x|
    daily << x.taken_steps if x.date.day == current_day && x.date.mon == current_month
    end
    daily.sum
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
