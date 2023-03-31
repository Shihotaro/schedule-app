class CreateSchedules < ActiveRecord::Migration[7.0]
  def change
    create_table :schedules do |t|
      t.string :title
      t.date :startDay
      t.date :finalDay
      t.boolean :allDay
      t.text :scheduleMemo

      t.timestamps
    end
  end
end
