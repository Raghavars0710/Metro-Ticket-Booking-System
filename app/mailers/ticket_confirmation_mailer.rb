class TicketConfirmationMailer < ApplicationMailer
  default from: 'metro.rail.service@gmail.com'

  def ticket_confirmation_email(train, ticket)
    @train = train
    @ticket = ticket

    mail(
      to: 'raghavendra.sharma@preciousinfosystem.com',
      subject: 'Welcome to Metro App!',
      text: "Congrats for creating Ticket by Metro App! Your ticket price: #{ticket.price} from: #{train.source} to: #{train.destination}"
    )
  end
end
