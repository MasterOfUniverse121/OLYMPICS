class AddRecordToEvent < ActiveRecord::Migration
  def change
    add_column :events, :record, :string
  end
end
