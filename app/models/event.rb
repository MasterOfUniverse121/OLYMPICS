class Event < ActiveRecord::Base
  has_many :athletes
  has_many :sports
  has_many :event_athletes
  has_many :sport_events
end
