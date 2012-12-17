class UsersController < ApplicationController
  before_filter :authenticate_user!

  def index
    authorize! :index, @user, :message => 'No esta autorizado como administrador'
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end
  
  def update
    authorize! :update, @user, :message => 'No esta autorizado como administrador'
    @user = User.find(params[:id])
    if @user.update_attributes(params[:user], :as => :admin)
      redirect_to users_path, :notice => "Usuario actualizado"
    else
      redirect_to users_path, :alert => "No se puede actualizar el usuario"
    end
  end
    
  def destroy
    authorize! :destroy, @user, :message => 'No esta autorizado como administrador'
    user = User.find(params[:id])
    unless user == current_user
      user.destroy
      redirect_to users_path, :notice => "Usuario eliminado"
    else
      redirect_to users_path, :notice => "No puedes eliminarte a ti mismo"
    end
  end
  
  def profile
    if signed_in?
            redirect_to user_path :action => "show", :id => current_user.id
        else
            redirect_to root_url
        end
  end
end