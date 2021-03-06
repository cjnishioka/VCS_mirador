class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.text :content
      t.string :user
      t.references :book, foreign_key: true
      t.integer :type
      t.boolean :plzReply
      t.integer :ReplyID
      t.boolean :deleted

      t.timestamps
    end
   add_index :comments, [:book_id, :created_at]
  end
end
