class SportEvent < ActiveRecord::Base
  belongs_to :event
  belongs_to :sport
end
