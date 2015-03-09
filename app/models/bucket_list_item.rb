class BucketListItem < ActiveRecord::Base
  it { should belong_to :activity }
  it { should belong_to :traveller }
end
