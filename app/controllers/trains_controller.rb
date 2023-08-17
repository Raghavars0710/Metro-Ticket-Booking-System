class TrainsController < ApplicationController
  load_and_authorize_resource
  before_action :current_train, only: [:update, :destroy, :edit]

  def index
    @metro_service = MetroService.find_by(id: params[:metro_service_id])
    @trains = @metro_service.trains.all
    @trains = @metro_service.trains.paginate(page: params[:page], per_page: 5)
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
    @trains = Train.paginate(page: params[:page], per_page: 6)
  end

  def edit ; end

  def create
    @train = Train.new(train_params)
    if @train.save!
      redirect_to root_path, notice: "Train was successfully created."
    else
      flash[:notice] = "Fill all fields properly"
      render :new
    end
  end

  def update
    if @train.update!(train_params)
      redirect_to trains_all_trains_path, notice: "Train was successfully updated."
    else
      render :edit
    end
  end

  def destroy
    @train.destroy
    redirect_to  request.referrer, notice: "Train was successfully deleted."
  end

  private

  def current_train
    @train = Train.find(params[:id])
  end

  def train_params
    params.require(:train).permit(:name, :train_number, :source, :destination, :metro_service_id)
  end
end