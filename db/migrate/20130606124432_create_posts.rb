class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :description
      t.string :source_link
      t.text :code_sample

      t.timestamps
    end
  end
end
