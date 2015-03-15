class BucketListItem < ActiveRecord::Base
  belongs_to :activity 
  belongs_to :traveller

  has_many :bucket_list_item_comments
end
