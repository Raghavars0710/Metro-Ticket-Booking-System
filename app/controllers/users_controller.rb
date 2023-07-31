require 'mailtrap'

class UsersController < ApplicationController
  
  before_action :current_user, only: [:show, :edit, :update, :destroy]  
  


  def index
    @users = User.all 
  end

  def all_users
    @users = User.all 
  end
  def new
    @user = User.new  
  end

  def show
  end

  def home
  end

  def edit
  end

  def create
    @user = User.new(user_params) 
    #  @user.role = current_user.role
    if @user.save! 
      UserMailer.user_email(@user).deliver_now  
      redirect_to user_path(@user), notice: "User was successfuly created."
    else 
      render :new, notice: "Fill all field properly"   
    end
  end

  def update
   if @user.update(user_params) 
     redirect_to user_path, notice: "user was successfully Updated."
   else
     render :edit
   end
  end

  def destroy
    @user = User.find_by(id: params[:id])
    @user.destroy
    redirect_to users_path, notice: "user was successfully deleted."
  end


  private

  def current_user
    @user = User.find_by(id: params[:id])
  end

  def user_params
    params.require(:user).permit(:id,:name, :email, :contact_number, :address, :gender, :role, :date_of_birth)
  end
end

