class BucketListsController < ApplicationController

  def show
    @traveller = current_traveller.email.gsub(/@.+/, "").titleize
    @activities = current_traveller.activities.includes(:destination).order(:destination_id)
    @destination = Destination.new
    @destinations = Destination.all
    @traveller_destinations = current_traveller.destinations
    # @destinations = Destination.all
  end


end