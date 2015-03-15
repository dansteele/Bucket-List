class ProfilesController < ApplicationController

  def index
    @travellers = Traveller.all
  end

  def show
    @traveller = Traveller.find(params[:id])
    @activities = @traveller.activities.includes(:destination).order(:destination_id)
    @destination = Destination.new
    @destinations = Destination.all
    @traveller_destinations = @traveller.destinations
    # @destinations = Destination.all
  end

end
