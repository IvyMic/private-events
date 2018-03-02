class CreateEventAttendees < ActiveRecord::Migration[5.1]
  def change
    create_table :event_attendees, :id => false do |t|
      t.integer :event_attendee_id
      t.integer :attendee_event_id
      t.timestamps
    end
  end
end
