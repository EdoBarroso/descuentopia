class DiscountsController < ApplicationController
  before_filter :authenticate_user!
  def index
    @discount_club = current_user.discount_clubs
  end

  def show
    @discount = Discount.find(params[:id])
  end

  def new
    if DiscountClub.any?
      authorize! :new, @discount, :message => 'No esta autorizado como administrador'
      @discount = Discount.new
    else
      render 'index', alert: "No existen clubes de descuento"
    end
  end

  def create
    authorize! :create, @discount, :message => 'No esta autorizado como administrador'
    @discount = Discount.new(params[:discount])
    if @discount.save
      redirect_to discounts_path, notice: "Descuento creado"
    else
      render 'new', alert: "No se puede crear el descuento"
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
      redirect_to discount_path, notice: "Descuento actualizado"
    else
      render 'edit', alert: "No se puede editar el descuento"
    end
  end

  def destroy
    authorize! :destroy, @discount, :message => 'No esta autorizado como administrador'
    discount = Discount.find(params[:id])
    discount.destroy
    redirect_to discounts_path, :notice => "Descuento eliminado"
  end
end
