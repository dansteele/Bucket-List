class BucketListItemsComment < ActiveRecord::Base

  has_one :traveller
  has_one :bucket_list_item

end
