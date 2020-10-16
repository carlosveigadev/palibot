class AddUserRefToTrip < ActiveRecord::Migration[6.0]
  def change
    add_reference :trips, :user, null: false, foreign_key: true
  end
end
