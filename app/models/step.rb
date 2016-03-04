class Step < ActiveRecord::Base
  validates :date, presence: true 
end
