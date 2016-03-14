class CreateMeetups < ActiveRecord::Migration
  def change
    create_table :meetups do |table|
      table.string :title, null: false
      table.text :description, null: false
      table.string :meetup_date, null: false
      table.timestamps null: false
      table.integer :creator_id, null: false
      table.integer :location_id, null: false
    end
  end
end
