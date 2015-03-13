class ProfilesController < ApplicationController

  def index
    @travellers = Travellers.all
  end

end
