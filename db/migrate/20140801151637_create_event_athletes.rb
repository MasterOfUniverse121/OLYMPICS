class CreateEventAthletes < ActiveRecord::Migration
  def change
    create_table :event_athletes do |t|
      t.integer :event_id
      t.integer :athlete_id
      t.string :gender

      t.timestamps
    end
  end
end
