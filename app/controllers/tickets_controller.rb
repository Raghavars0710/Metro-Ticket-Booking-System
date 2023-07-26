class TicketsController < ApplicationController
  before_action :current_ticket, only: [:show, :edit, :update, :destroy] # Add filter before action for perticuler actions
  before_action :current_train_tickets, only:[:index, :new, :create]  
  # before_action :current_user_tickets , only: [:index,:new,:create]


  def index
    if @train 
      @tickets = @train.tickets.all
    # else
    #   @tickets = @user.tickets.all
    end
  end

  def new
    if @train 
      @ticket = @train.tickets.new
    end
  end

  def create
    if @train 
      @ticket = @train.tickets.new(ticket_params)
      @ticket.price = calculate_price(@train.source, @train.destination) #for set price by defult
      if @ticket.save!
        redirect_to train_ticket_path(@train,@ticket)  #redirect to ticket show path
      end
    end
  end

  def show
    if @train
      @ticket = @train.tickets.find(params[:id]) #s find the train tickets id 
      @ticket.price = calculate_price(@train.source, @train.destination) # show set price by default
    end
  end

  def edit
  end

  def update
  end

  def destroy
    @ticket.destroy
    redirect_to train_tickets_path, notice: "ticket was successfully deleted."
  end


  private

  def current_train_tickets   #find Train id from Train model
    @train = Train.find(params[:train_id])
  end

  def current_user_tickets   #find Train id from Train model
    # @train = User.find(params[:user_id])
  end

  def current_ticket
    # @user = User.find(params[:user_id])
    @train = Train.find(params[:train_id])
    @ticket = @train.tickets.find(params[:id])
  end

  def ticket_params 
    params.require(:ticket).permit(:user_id,:train_id,:price, :book_date,:train_id)
  end


  def calculate_price(source, destination) #this method is create for set price default 
    case [source, destination]
     when ["Airport_metro_station", "Super_corridor_metro"]
       10
     when ["Airport_metro_station", "Love_kush_metro"]
       15
     when ["Airport_metro_station", "MR_10_metro"]
       20
     when ["Airport_metro_station", "Sukhliya_metro"]
       25
     when ["Airport_metro_station", "Bapat_metro"]
       30
     when ["Airport_metro_station", "Vijay_nagar_metro"]
       35
     when ["Super_corridor_metro_station", "Love_kush_metro"]
       10
     when ["Super_corridor_metro_station", "MR_10_metro"]
       15
     when ["Super_corridor_metro_station", "Sukhliya_metro"]
       20
     when ["Super_corridor_metro_station", "Bapat_metro"]
       25
     when ["Super_corridor_metro_station", "Vijay_nagar_metro"]
       30            
     when ["Love_kush_metro_station", "MR_10_metro"]
       10
     when ["Love_kush_metro_station", "Sukhliya_metro"]
       15
     when ["Love_kush_metro_station", "Bapat_metro"]
       20
     when ["Love_kush_metro_station", "Vijay_nagar_metro"]
       25                    
     when ["MR_10_metro_station", "Sukhliya_metro"]
       10
     when ["MR_10_metro_station", "Bapat_metro"]
       15
     when ["MR_10_metro_station", "Vijay_nagar_metro"]
       20
     when ["Sukhliya_metro_station", "Bapat_metro"]
       10
     when ["Sukhliya_metro_station", "Vijay_nagar_metro"]
       15                    
     when ["Bapat_metro_station", "Vijay_nagar_metro"]
       15
     else
       0
    end
  end

end
