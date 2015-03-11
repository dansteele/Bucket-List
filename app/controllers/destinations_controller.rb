class DestinationsController < ApplicationController

  def create
    @destination = Destination.find_or_create_by(allowed_params)
    # render :partial => "destinations/destination", :locals => { :destination => @destination }
    # render :js => "$('#destinations').append(html)"
  end

  private
  def allowed_params
    params.require(:destination).permit(:name, :image_url)
  end

end
