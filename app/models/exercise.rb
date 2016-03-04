class Exercise < ActiveRecord::Base
  validates :date, presence: true 
  belongs_to :exercise_type
end
