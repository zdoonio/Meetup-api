class CreateMeetups < ActiveRecord::Migration[5.2]
  def change
    create_table :meetups do |t|
      t.string :name
      t.text :description
      t.timestamp :evaluation_date
      t.decimal :latitude, precision: 10, scale: 6
      t.decimal :longtiude, precision: 10, scale: 6

      t.timestamps
    end
  end
end
