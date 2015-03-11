class Activity < ActiveRecord::Base

  has_many :bucket_list_items
  belongs_to :destination

  accepts_nested_attributes_for :bucket_list_items

end
