class AddUserToVotes < ActiveRecord::Migration[6.0]
  def change
    add_reference :votes, :user, null: false, foreign_key: true
  end
end
