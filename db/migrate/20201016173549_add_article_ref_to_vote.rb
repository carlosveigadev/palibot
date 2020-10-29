class AddArticleRefToVote < ActiveRecord::Migration[6.0]
  def change
    add_reference :votes, :article, null: false, foreign_key: true
  end
end
