class CreateGrammars < ActiveRecord::Migration
  def change
    create_table :grammars do |t|
      t.string :name
      t.text :content

      t.timestamps
    end
  end
end
