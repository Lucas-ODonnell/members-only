class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :author
      t.string :title, limit: 7
      t.text :body, limit: 20
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
