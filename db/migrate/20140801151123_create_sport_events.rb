class CreateSportEvents < ActiveRecord::Migration
  def change
    create_table :sport_events do |t|
      t.integer :sport_id
      t.integer :event_id
      t.string :arena

      t.timestamps
    end
  end
end
