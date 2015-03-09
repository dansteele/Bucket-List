class AddTravellerIdToActivity < ActiveRecord::Migration
  def change
    add_column :activities, :traveller_id, :integer
  end
end
