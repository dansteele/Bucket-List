class ProfilesController < ApplicationController

  def index
    @travellers = Traveller.all
  end

end
