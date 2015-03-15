class ProfilesController < ApplicationController

  def index
    @travellers = Traveller.all
  end

  def show
    @traveller = Traveller.find(params[:id])
  end

end
