class DropTrip < ActiveRecord::Migration[6.0]
  def change
    remove_reference :article_trips, :article, null: false, foreign_key: true
    remove_reference :article_trips, :trip, null: false, foreign_key: true
    drop_table :article_trips
  end
end