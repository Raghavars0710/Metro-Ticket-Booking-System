class UsersController < ApplicationController
  
  before_action :current_user, only: [:show, :edit, :update, :destroy]  # Add filter before action for perticuler actions


  def index
    @users = User.all  # Select All user from user model
  end

  def new
    @user = User.new  
  end

  def show
  end

  def edit
  end

  def create
    @user = User.new(user_params)  # create new user for perticuler perams by using user_params private method 
     @user.role = current_welcome.role
    if @user.save!  # if user is save then show @user by using show user_path route 
      UserMailer.welcome_email(@user).deliver_now  # Send the welcome email
      redirect_to user_path(@user), notice: "User was successfuly created."
    else 
      render :new, notice: "Fill all field properly"   # Code for handling failed user creation
    end
  end

  def update
   if @user.update(user_params)  #update user data by using  update method to permit by user_perams private method
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
    @user = User.find_by(id: params[:id])
  end

  def user_params
    params.require(:user).permit(:id,:name, :email, :contact_number, :address, :gender, :role, :date_of_birth)
  end


end

