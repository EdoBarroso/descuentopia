class DiscountClubsController < ApplicationController
  def index
    authorize! :index, @clubs, :message => 'No esta autorizado como administrador'
    @clubs = DiscountClub.all
  end

  def update
    authorize! :update, @clubs, :message => 'No esta autorizado como administrador'
    @clubs = DiscountClub.find(params[:id])
    if @clubs.update_attributes(params[:discount_club])
      redirect_to discount_clubs_path, :notice => "Club Actualizado"
    else
      redirect_to discount_clubs_path, :alert => "No se puede actualizar"
    end
  end
end
