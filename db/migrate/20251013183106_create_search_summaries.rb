class CreateSearchSummaries < ActiveRecord::Migration[8.0]
  def change
    create_table :search_summaries do |t|
      t.string :user_ip
      t.string :session_id
      t.string :search_term
      t.integer :count
      t.datetime :last_searched_at

      t.timestamps
    end
  end
end
