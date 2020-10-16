class CreateArticleCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :article_categories do |t|

      t.timestamps
    end
  end
end
