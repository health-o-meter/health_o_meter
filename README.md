# Health-o-Meter

## Description
A personal fitness app that helps users better manage their health. Please review this <a href="https://www.lucidchart.com/invitations/accept/f54af119-7d39-476d-b50c-c28428313c7b">ERD diagram </a>to view the relationships between health data tables.

## Usage
```Ruby
def self.daily_total
  current_day = Time.now.day
  current_month = Time.now.mon
  daily = []
  self.all.each do |x|
  daily << x.amount if x.date.day == current_day && x.date.mon == current_month
  end
  daily.sum
end
```
Customized method track totals for various time periods
Start tracking your health stats on <a href="glacial-dusk-60771.herokuapp.com">Heroku</a> today!
