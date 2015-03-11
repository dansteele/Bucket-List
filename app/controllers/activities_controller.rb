class ActivitiesController < ApplicationController

  def create
    # @dest_id = params[:activity][:destination_id]
    @activity = Activity.create!(allowed_params)
    # binding.pry

    # render @activity
    # render :js
  end

  private
  def allowed_params
    params.require(:activity).permit(:name, :image_url, :destination_id)
  end

end
