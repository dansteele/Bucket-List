class BucketListsController < ApplicationController

  def show
    @activities = current_traveller.activities.includes(:destination).order(:destination_id)
    @destination = Destination.new
    @destinations = Destination.all
    @traveller_destinations = current_traveller.destinations
    # @destinations = Destination.all
    binding.pry
  end


end