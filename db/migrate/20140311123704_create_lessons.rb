class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.string :name
      t.text :content
      t.integer :level_id

      t.timestamps
    end
  end
end
