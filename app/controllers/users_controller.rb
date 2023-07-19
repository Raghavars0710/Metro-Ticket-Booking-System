class UsersController < ApplicationController
  
  before_action :current_user, only: [:show, :edit, :update, :destroy]

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def show
  end

  def edit
  end

  def create
    @user = User.new(user_params) 

    if @user.save!
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
    @user.destroy
    redirect_to users_path, notice: "user was successfully deleted."
  end

  private

  def current_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name,:contact_number,:address,:type,:role_description)
  end
end