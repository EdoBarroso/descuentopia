class UsersController < ApplicationController
  before_filter :authenticate_user!

  def show
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(params[:user], :as => :admin)
      redirect_to user_path(@user), :notice => "Usuario actualizado"
    else
      redirect_to user_surveys_path, :alert => "No se puede actualizar el usuario"
    end
  end

end