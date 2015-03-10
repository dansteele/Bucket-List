class ActivitiesController < ApplicationController

  def create
    @activity = Activity.create(allowed_params)
    render @activity
  end

  private
  def allowed_params
    params.require(:activity).permit(:name, :image_url, :destination_id)
  end

end
