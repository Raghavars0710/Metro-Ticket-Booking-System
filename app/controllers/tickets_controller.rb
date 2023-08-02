class TicketsController < ApplicationController
  before_action :current_ticket, only: [:show, :edit, :update, :destroy]
  before_action :current_train_tickets, only:[:index]  

  def index
    if @train 
      @tickets = @train.tickets.all
    end
  end

  def user_ticket
    @tickets = Ticket.where(user_id: current_user.id)  
  end

  def all_tickets
    @tickets = Ticket.all
  end

  def new
    @train = Train.find(params[:train_id])
    if @train 
      @ticket = @train.tickets.new
    end
    @user = current_user.id
  end

  def create
    @train = Train.find(params[:train_id])
    if @train 
      @ticket = @train.tickets.new(ticket_params)
      @ticket.price = calculate_price(@train.source, @train.destination) #for set price by defult
      # byebug
      @user = current_user.id
      @user_email = current_user.email
      if @ticket.save!
        TicketConfirmationMailer.ticket_confirmation_email(@user_email,@train,@ticket).deliver_now
        redirect_to train_ticket_path(@train,@ticket)  
      end
    end
  end

  def show
    if @train
      @ticket = @train.tickets.find(params[:id]) 
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

  def current_train_tickets  
    @train = Train.find(params[:train_id])
  end

  def current_ticket
    @train = Train.find(params[:train_id])
    @ticket = @train.tickets.find(params[:id])
  end

  def ticket_params 
    params.require(:ticket).permit(:user_id,:price, :book_date,:train_id)
  end

  def calculate_price(source, destination) #this method is create for set price default 
    case [source, destination]
      when ["Airport Metro Station", "Super Corridor Metro Station"]
        10
      when ["Airport Metro Station", "Lav_kush Metro Station"]
        15
      when ["Airport Metro Station", "MR 10 Metro Station"]
        20
      when ["Airport Metro Station", "Sukhliya Metro Station"]
        25
      when ["Airport Metro Station", "Bapat Metro Station"]
        30
      when  ["Airport Metro Station", "Vijay Nagar Metro Station"]
        35  
      when ["Vijay Nagar Metro Station", "Airport Metro Station"]
        35   
      when ["Lav_kush Metro Station", "MR 10 Metro Station"]
        10
      when ["Lav_kush Metro Station", "Sukhliya Metro Station"]
        15
      when ["Lav_kush Metro Station", "Bapat Metro Station"]
        20
      when ["Vijay Nagar Metro Station", "Lav_kush Metro Station"]
        25                    
      when ["Vijay Nagar Metro Station", "MR 10 Metro Station"]
        20
      when  ["Vijay Nagar Metro Station", "Sukhliya Metro Station"]
        15                    
      when ["Vijay Nagar Metro Station", "Bapat Metro Station"]
        15
      else
        0
    end
  end

end

