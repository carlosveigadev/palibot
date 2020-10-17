class CreateArticleTrips < ActiveRecord::Migration[6.0]
  def change
    create_table :article_trips do |t|

      t.timestamps
    end
  end
end
