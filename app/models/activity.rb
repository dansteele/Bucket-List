class Activity < ActiveRecord::Base

  has_many :bucket_list_items
  belongs_to :destination

end
