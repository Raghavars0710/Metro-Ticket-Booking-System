class MetroServicesController < ApplicationController
 
  def index
    @metro_s = MetroService.all
  end

  def new
    @metro_s = MetroService.new
  end

  def create
      @metro_s = MetroService.new(metro_service_params)
      if @metro_s.save
        redirect_to root_path
      else
        render :new, notice: "Fill all field properly"
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

  private
  
  def metro_service_params
    params.require(:metro_service).permit(:source, :destination)
  end

end



