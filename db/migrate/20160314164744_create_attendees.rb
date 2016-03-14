class CreateAttendees < ActiveRecord::Migration
  def change
    create_join_table :meetups, :users, table_name: :attendees do |table|
      table.index :user_id
      table.index :meetup_id
    end
  end
end
