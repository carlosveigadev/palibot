class RemoveTipFromArticles < ActiveRecord::Migration[6.0]
  def change
    remove_reference :articles, :trip, null: false, foreign_key: true
  end
end
