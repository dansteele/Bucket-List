class Comment < ActiveRecord::Base

  belongs_to :traveller
  belongs_to :activity

end
