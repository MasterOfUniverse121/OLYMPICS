class DeleteTimeAndDayAddDateTimeToSportEvents < ActiveRecord::Migration
  def change
    remove_column :events, :time, :time
    remove_column :events, :date, :time
    add_column :sport_events, :date, :datetime
  end
end
