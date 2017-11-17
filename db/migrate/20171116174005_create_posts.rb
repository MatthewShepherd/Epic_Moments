class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :image_url
      t.integer :postable_id
      t.string :postable_type

      t.timestamps
    end
  end
end
