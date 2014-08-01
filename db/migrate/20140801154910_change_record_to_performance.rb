class ChangeRecordToPerformance < ActiveRecord::Migration
  def change
    remove_column :events, :record, :string
    add_column :events, :bestperformance, :string
  end
end
