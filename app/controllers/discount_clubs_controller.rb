class DiscountClubsController < ApplicationController
  def index
    authorize! :index, @clubs, :message => 'No esta autorizado como administrador'
    @clubs = DiscountClub.all
  end
end
