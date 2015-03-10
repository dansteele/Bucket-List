class BucketListsController < ApplicationController

  def show
    @activities = current_traveller.activities.includes(:destination)
    @activity = Activity.new
    @destination = Destination.new
    @destinations = Destination.all
  end


end