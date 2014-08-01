class Sport < ActiveRecord::Base
  has_many :events
  has_many :sport_events
end
