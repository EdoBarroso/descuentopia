class DiscountsController < ApplicationController
  before_filter :authenticate_user!
  def index
    @discount_club = current_user.discount_clubs
  end

  def show
    @discount = Discount.find(params[:id])
  end

  def new
    authorize! :new, @discount, :message => 'No esta autorizado como administrador'
    @discount = Discount.new
  end

  def create
    authorize! :create, @discount, :message => 'No esta autorizado como administrador'
    @discount = Discount.new(params[:discount])
    if @discount.save
      redirect_to discounts_path
    else
      render 'new'
    end
  end

  def edit
    authorize! :edit, @discount, :message => 'No esta autorizado como administrador'
    @discount = Discount.find(params[:id])
  end

  def update
    authorize! :update, @discount, :message => 'No esta autorizado como administrador'
    @discount = Discount.find(params[:id])
    if @discount.update_attributes(params[:discount])
      redirect_to discount_path
    else
      render 'edit'
    end
  end

  def destroy
    authorize! :destroy, @discount, :message => 'No esta autorizado como administrador'
    discount = Discount.find(params[:id])
    discount.destroy
    redirect_to venues_path, :notice => "Descuento eliminado"
  end
end
