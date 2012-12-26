class DiscountsController < ApplicationController
  before_filter :authenticate_user!
  def index
    @discount_club = current_user.discount_clubs
    @newdiscount = Discount.new
  end

  def show
    @discount = Discount.find(params[:id])
  end
end
