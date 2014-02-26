class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.string :name
      t.text :content
      t.integer :rubric_id
      t.integer :user_id

      t.timestamps
    end
  end
end
