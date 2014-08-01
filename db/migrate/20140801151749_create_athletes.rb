class CreateAthletes < ActiveRecord::Migration
  def change
    create_table :athletes do |t|
      t.string :name
      t.integer :age
      t.string :country

      t.timestamps
    end
  end
end
