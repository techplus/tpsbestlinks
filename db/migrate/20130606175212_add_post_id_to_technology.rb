class AddPostIdToTechnology < ActiveRecord::Migration
  def change
    add_column :technologies, :post_id, :integer
  end
end
