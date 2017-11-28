class CreateSchedules < ActiveRecord::Migration[5.1]
  def change
    create_table :schedules do |t|
      t.boolean :repeat
	  t.integer :day
	  t.time :start, :end
	  t.integer :owner_id

      t.timestamps
    end
  end
end
