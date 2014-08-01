class RemoveIt < ActiveRecord::Migration
  def change
    remove_column :events, :day, :date
  end
end
