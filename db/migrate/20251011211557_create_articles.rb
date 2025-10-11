class CreateArticles < ActiveRecord::Migration[7.2]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :subtitle
      t.text :body
      t.integer :year
      t.references :author, null: false, foreign_key: true

      t.timestamps
    end
  end
end
