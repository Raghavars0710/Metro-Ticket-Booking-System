class MembersController < ApplicationController
 
  before_action :current_mamber, only: [:show, :edit, :update, :destroy]

  def index
    @mambers = Mamber.all
  end

  def new
    @mamber = Mamber.new
  end

  def show
  end

  def edit
  end

  def create
    @mamber = Mamber.new(mamber_params) 

    if @mamber.save!
      redirect_to mamber_path(@mamber), notice: "mamber was successfuly created."
    else
      render :new, notice: "Fill all field properly"
    end
  end

  def update
   if @mamber.update(mamber_params)
    redirect_to mamber_path, notice: "mamber was successfully Updated."
   else
    render :edit
   end
  end

  def destroy
    @mamber.destroy
    redirect_to mambers_path, notice: "mamber was successfully deleted."
  end

  private

  def current_mamber
    @mamber = Mamber.find(params[:id])
  end

  def mamber_params
    params.require(:mamber).permit(:name, :email, :contact_number, :address, :date_of_birth, :role, :gender)
  end
end
