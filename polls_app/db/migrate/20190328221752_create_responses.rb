class CreateResponses < ActiveRecord::Migration[5.2]
  def change
    create_table :responses do |t|
      t.integer :question_id
      t.integer :user_id

      t.timestamps
    end
    add_index :responses, :question_id
    add_index :responses, :user_id
  end
end
