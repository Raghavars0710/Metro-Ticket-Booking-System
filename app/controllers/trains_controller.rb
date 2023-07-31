class TrainsController < ApplicationController

    def index
      @metro_service = MetroService.find_by(id: params[:metro_service_id])
      @trains = @metro_service.trains.all
    end
  
    def new
      @train = Train.new
    end
  
    def show
      @metro_service = MetroService.find(params[:id])
      @trains = @metro_service.trains.all
    end
  
    def all_trains
      @trains = Train.all
    end

    def edit
      @train = Train.find(params[:id])
    end
  
    def create
      @train = Train.new(train_params)  #create prticular metro service trains
  
      if @train.save! 
        redirect_to root_path, notice: "Train was successfuly created."
      else
        render :new, notice: "Fill all field properly"
      end
    end
  
    def update
      @train = Train.find(params[:id])
      if @train.update!(train_params)     
        redirect_to trains_all_trains_path, notice: "Train was successfully Updated."
      else
        render :edit
      end
    end
  
    def destroy
      @train = Train.find(params[:id])
      @train.destroy
      redirect_to  request.referrer, notice: "Train was successfully deleted."
    end
  

    private
  
    def current_train
      @train = Train.find_by(id: params[:id])
    end
  
    def train_params
      params.require(:train).permit(:name, :train_number, :source, :destination, :metro_service_id)
    end
    
end
