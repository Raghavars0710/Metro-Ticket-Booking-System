class MetroServicesController < ApplicationController
  before_action :current_metro_service, only: [:show] # Add filter before action for perticuler actions

  def new
    @metro_service = MetroService.new
  end

  def create
    @metro_s = MetroService.new(metro_service_params)
    if @metro_s.save!
      @metro_service = MetroService.find_by(source:@metro_s.source, destination: @metro_s.destination)
      redirect_to metro_service_trains_path(@metro_service)  #change path to send metro service directly by train index
    else
      render :new, notice: "Fill all field properly"
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
  end


  private

  def current_metro_service
    @metro_service = MetroService.find_by(id: params[:id])
  end

  def metro_service_params
    params.require(:metro_service).permit(:source, :destination)
  end
end
