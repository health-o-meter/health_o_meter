class Exercise < ActiveRecord::Base
  validates :date, presence: true
  belongs_to :exercise_type


  def  self.daily_total
      current_day = Time.now.day
      current_month = Time.now.mon
      daily = []
      self.all.each do |x|
      daily << x.amount if x.date.day == current_day && x.date.mon == current_month
      end
      daily.sum
  end

end
