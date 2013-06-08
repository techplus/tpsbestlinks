class RemovePostIdFromTechnology < ActiveRecord::Migration
  def up
    remove_column :technologies, :post_id
  end

  def down
    add_column :technologies, :post_id, :integer
  end
end
