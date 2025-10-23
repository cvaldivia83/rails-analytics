class AddIndexToSearchSummaries < ActiveRecord::Migration[8.0]
  def change
    add_index :search_summaries, [ :user_ip, :search_term ], unique: true
  end
end
