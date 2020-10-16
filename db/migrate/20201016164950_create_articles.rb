class CreateArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :articles do |t|
      t.text :title
      t.text :content
      t.string :image

      t.timestamps
    end
  end
end
