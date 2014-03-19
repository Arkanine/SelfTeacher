class CreateResults < ActiveRecord::Migration
  def change
    create_table :results do |t|
      t.references :user, index: true
      t.references :answer, index: true
      t.integer    :score

      t.timestamps
    end
  end
end
