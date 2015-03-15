class AddTravellerIdToComments < ActiveRecord::Migration
  def change
    add_column :comments, :traveller_id, :integer
  end
end
