class AddArticleRefToArticleTrip < ActiveRecord::Migration[6.0]
  def change
    add_reference :article_trips, :article, null: false, foreign_key: true
  end
end
