class Athlete < ActiveRecord::Base
  has_many :events
  has_many :event_athletes
end
