class MetroServicesController < ApplicationController
  load_and_authorize_resource

  def index
    @metro_services = MetroService.all
    if params[:source].present?
      @metro_services = @metro_services.where(source: params[:source])
    end
    if params[:destination].present?
      @metro_services = @metro_services.where(destination: params[:destination])
    end
    @metro_services = @metro_services.paginate(page: params[:page], per_page: 5)
  end

  def new
    @metro_s = MetroService.new
  end

  def create
    @metro_s = MetroService.new(metro_service_params)
    if @metro_s.save
      redirect_to root_path
    else
      flash.now[:notice] = "Fill all fields properly"
      render :new
    end
  end

  def edit
    @metro_s = MetroService.find(params[:id])
  end

  def update
    @metro_s = MetroService.find(params[:id])
    if @metro_s.update(metro_service_params)
      flash[:alert] = "Route updated"
      redirect_to root_path
    else
      render "edit"
    end
  end

  def show
    @metro_s = MetroService.find(params[:id])
  end

  def destroy
    @metro_s = MetroService.find(params[:id])
    @metro_s.destroy
    flash[:alert] = "Route deleted"
    redirect_to request.referrer
  end

  def search
    if params[:source].present? || params[:destination].present?
      redirect_to metro_services_path(source: params[:source], destination: params[:destination])
    else
      redirect_to metro_services_path
    end
  end


  private

  def metro_service_params
    params.require(:metro_service).permit(:source, :destination)
  end
end
