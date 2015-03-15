class ProfilesController < ApplicationController

  def index
    @travellers = Traveller.all
  end

  def show
    if current_traveller.nil? || current_traveller.id != params[:id].to_i
      @is_viewer = true
      @traveller = Traveller.find(params[:id])
      @activities = @traveller.activities.includes(:destination).order(:destination_id)
      @destination = Destination.new
      @destinations = Destination.all
      @traveller_destinations = @traveller.destinations
    else
      redirect_to bucket_list_path
    end
  end

end
