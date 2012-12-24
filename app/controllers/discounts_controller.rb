class DiscountsController < ApplicationController
  before_filter :authenticate_user!
  def index
    @discount_club = current_user.discount_clubs
  end

  def new
    authorize! :new, @discount, :message => 'No esta autorizado como administrador'
    @discount = Discount.new
  end

  def destroy
    authorize! :destroy, @discount, :message => 'No esta autorizado como administrador'
    discount = Discount.find(params[:id])
    discount.destroy
    redirect_to venues_path, :notice => "Descuento eliminado"
  end
end
