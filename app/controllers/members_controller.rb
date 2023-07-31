class MembersController < ApplicationController
 
  before_action :current_member, only: [:show, :edit, :update, :destroy] # Add filter before action for perticuler actions
  before_action :current_user_members, only:[:index, :new, :create]  

  def index
    if @user
      @members = @user.members.all
    else 
      redirect_to root_path, notice: "Members of User Not Found "
    end
  end

  def new
    if @user 
      @member = @user.members.new
    else 
      redirect_to root_path, notice: "Members of User Not Found "
    end
  end

  def show
    @member = @user.members.find_by(id: params[:id])
  end

  def edit
  end

  def create
    @member = @user.members.new(member_params) 

    if @member.save!
      redirect_to user_member_path(@user,@member), notice: "Member was successfuly created."
    else
      render :new, notice: "Fill all field properly"
    end
  end

  def update
   if @member.update(member_params)
    redirect_to user_member_path, notice: "Member was successfully Updated."
   else
    render :edit
   end
  end

  def destroy
    @member = @user.members.find_by(id: params[:id])
    @member.destroy
    redirect_to user_member_path, notice: "Member was successfully deleted."
  end


  private

  def current_user_members
    @user = User.find(params[:user_id])
  end

  def current_member
    @user = User.find(params[:user_id])
    @member = @user.members.find_by(id: params[:id])
  end
  
  def member_params
    params.require(:member).permit(:user_id, :name, :email, :contact_number, :address, :date_of_birth, :role, :gender)
  end
end
