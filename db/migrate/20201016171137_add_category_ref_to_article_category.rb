class AddCategoryRefToArticleCategory < ActiveRecord::Migration[6.0]
  def change
    add_reference :article_categories, :category, foreign_key: true
  end
end
