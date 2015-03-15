class CreateBucketListItemsComments < ActiveRecord::Migration
  def change
    create_table :bucket_list_items_comments do |t|
      t.integer :traveller_id
      t.integer :bucket_list_items_id

      t.timestamps null: false
    end
  end
end
