class AddTechnologyIdToPost < ActiveRecord::Migration
  def change
    add_column :posts, :technology_id, :integer
  end
end
