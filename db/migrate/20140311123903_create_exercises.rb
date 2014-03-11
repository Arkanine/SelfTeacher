class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.string :name
      t.text :content
      t.integer :lesson_id

      t.timestamps
    end
  end
end
