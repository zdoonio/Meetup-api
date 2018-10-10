class AddUserToMeetup < ActiveRecord::Migration[5.2]
  def change
    add_reference :meetups, :user, foreign_key: true
  end
end
