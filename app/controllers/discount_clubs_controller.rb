class DiscountClubsController < ApplicationController
  before_filter :authenticate_user!

  def index
    authorize! :index, @clubs, :message => 'No esta autorizado como administrador'
    @clubs = DiscountClub.all
    @newclub = DiscountClub.new
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

  def create
    authorize! :create, @clubs, :message => 'No esta autorizado como administrador'
    @clubs = DiscountClub.new(params[:discount_club])
    if @clubs.save
      redirect_to discount_clubs_path, notice: "Club creado"
    else
      render 'index', alert: "No se puede crear el club"
    end
  end

  def destroy
    authorize! :destroy, @clubs, :message => 'No esta autorizado como administrador'
    @clubs = DiscountClub.find(params[:id])
    @clubs.destroy
    redirect_to discount_clubs_path, :notice => "Club Eliminado"
  end
end
