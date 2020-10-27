class CreateVotes < ActiveRecord::Migration[6.0]
  def change
    create_table :votes do |t|

      t.timestamps
      
    end

    execute "SELECT setval('votes_id_seq', 2)"
  end
end
