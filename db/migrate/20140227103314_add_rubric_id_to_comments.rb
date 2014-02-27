class AddRubricIdToComments < ActiveRecord::Migration
  def change
    add_column :comments, :rubric_id, :integer
  end
end
