class ActivitiesController < ApplicationController

  def create
    @activity = Activity.create!(allowed_params)
  end

  def destroy
    if Activity.destroy(params[:id])
      @id = params[:id]
    else
      render "There was a problem deleting your activity."
    end
  end

  private
  def allowed_params
    params.require(:activity).permit(:name, :image_url, :destination_id,
      :bucket_list_items_attributes => [:traveller_id])
  end

end
