class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.time :time
      t.date :day

      t.timestamps
    end
  end
end
