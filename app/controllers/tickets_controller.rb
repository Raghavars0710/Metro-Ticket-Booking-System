class TicketsController < ApplicationController
  before_action :current_ticket, only: [:show, :edit, :update, :destroy]
  before_action :current_train_tickets, only:[:index, :new, :create]
  # before_action :current_user_tickets , only: [:index,:new,:create]


  def index

    if @train 
      @tickets = @train.tickets.all
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
      if @ticket.save!
        redirect_to train_ticket_path(@train,@ticket)
      end
    end
  end

  def show
    if @train
      @ticket = @train.tickets.find(params[:id])
    end
  end

  def edit
  end

  def update
  end

  def destory
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
    params.require(:ticket).permit(:user_id,:train_id,:price, :book_date,:train_id)
  end

end
