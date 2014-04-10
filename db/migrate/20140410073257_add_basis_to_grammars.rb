class AddBasisToGrammars < ActiveRecord::Migration
  def change
    add_column :grammars, :basis, :string
  end
end
