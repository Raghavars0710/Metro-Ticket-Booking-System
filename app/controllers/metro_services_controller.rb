class MetroServicesController < ApplicationController
  before_action :current_metro_service, only: [:create,:new] # Add filter before action for perticuler actions
  before_action :current_user_metro_services, only:[:show]

  def new
    if @user 
      @metro_s = @user.metro_services.new
    end
  end

  def create
    if @user
      @metro_s = @user.metro_services.new(metro_service_params)
      if @metro_s.save
        # @metro_service = MetroService.find_by(source:@metro_s.source, destination: @metro_s.destination)
        redirect_to user_metro_service_path(@user,@metro_s)  #change path to send metro service directly by train index
      else
        render :new, notice: "Fill all field properly"
      end
    end
  end

  def edit
  end

  def update
   #  if @metro_service.update(metro_service_params)
   #    redirect_to metro_services_path(@metro_service), notice: "successfully Updated."
   #  else
   #    render :edit
   # end
  end

  def show
    @metro_s = @user.metro_services.find(params[:id])
  end


  private

  def current_user_metro_services
    @user = User.find(params[:user_id])
  end

  def current_metro_service
    @user = User.find(params[:user_id])
    # @metro_s = @user.metro_services.find(params[:id])
  end

  def metro_service_params
    params.require(:metro_service).permit(:source, :destination)
  end
end
