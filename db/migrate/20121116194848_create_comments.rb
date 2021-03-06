class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :commenter
      t.text :body
      t.references :topic

      t.timestamps
    end
    add_index :comments, :topic_id
  end
end
