class BucketListsController < ApplicationController

  def show
    @activities = current_traveller.activities.includes(:destination)
    @activity = Activity.new
    @destination = Destination.new
    @traveller_destinations = current_traveller.destinations
    # @destinations = Destination.all
  end


end