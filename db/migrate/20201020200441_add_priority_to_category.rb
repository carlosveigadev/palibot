class AddPriorityToCategory < ActiveRecord::Migration[6.0]
  def change
    add_column :categories, :priority, :integer
  end
end
