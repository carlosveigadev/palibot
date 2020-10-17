class RemoveVoteFromArticles < ActiveRecord::Migration[6.0]
  def change
    remove_reference :articles, :vote, null: false, foreign_key: true
  end
end
