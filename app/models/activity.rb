class Activity < ActiveRecord::Base

  has_many :bucket_list_items
  belongs_to :destination

  accepts_nested_attributes_for :bucket_list_items

  geocoded_by :geocode_input
  before_save :geocode

  has_many :comments

  protected
  def geocode_input
    "#{self.location}, #{self.destination.name}"
  end

end
