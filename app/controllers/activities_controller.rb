class ActivitiesController < ApplicationController

  def create
    @activity = Activity.create!(allowed_params)
  end

  def destroy
    @id = params[:id]
    Activity.destroy(params[:id])
  end

  private
  def allowed_params
    params.require(:activity).permit(:name, :image_url, :location, :destination_id,
      :bucket_list_items_attributes => [:traveller_id])
  end

end
