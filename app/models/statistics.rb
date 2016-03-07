module Statistics

  def self.daily_total
    current_day = Time.now.day
    current_month = Time.now.mon
    daily = []
    self.all.each do |x|
    daily << x.amount if x.date.day == current_day && x.date.mon == current_month
    end
    daily.sum
  end

  def self.weekly_total
    current_week = Time.now.beginning_of_week
    current_month = Time.now.mon
    weekly = []
    self.all.each do |x|
    weekly << x.amount if x.date.beginning_of_week == current_week && x.date.mon == current_month
    end
    weekly.sum
  end

  def self.monthly_total
    current_month = Time.now.mon
    current_year = Time.now.year
    monthly = []
    self.all.each do |x|
    monthly << x.amount if x.date.mon == current_month && x.date.year == current_year
    end
    monthly.sum
  end

end
