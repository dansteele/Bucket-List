class AddNameToTraveller < ActiveRecord::Migration
  def change
    add_column :travellers, :name, :string
  end
end
