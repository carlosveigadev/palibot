class AddTripRefToArticle < ActiveRecord::Migration[6.0]
  def change
    add_reference :articles, :trip, null: false, foreign_key: true
  end
end
