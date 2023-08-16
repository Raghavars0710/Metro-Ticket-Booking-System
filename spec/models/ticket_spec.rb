require 'rails_helper'

RSpec.describe Ticket, type: :model do
  describe "validations" do
    it 'is valid with valid attributes' do
      metro_service = MetroService.create(source: "Vijay Nagar Metro Station", destination: "Sukhliya Metro Station")
      train = Train.create(name: "Shivaji metro", train_number: 689674, source: "Vijay Nagar Metro Station", destination: "Sukhliya Metro Station", metro_service_id: metro_service.id)
      user = User.create!(email: "raghavendra@gmail.com",password:"123456", encrypted_password: "encrypted_password_value", name: "Raghav", contact_number: 1234567890, address: "123 Main Street, City, Country", role: "Passenger", date_of_birth: "1990-01-01", gender: "male", confirmed_at: Time.now)
      ticket = Ticket.new(book_time: Time.now, book_date: Date.today, price: 50, train_id: train.id, user_id: user.id )
      expect(ticket).to be_valid
    end

    it 'is not valid without book_date' do
      ticket = Ticket.new(book_time: Time.now, price: 50, train_id: 1, user_id: 1)
      expect(ticket).not_to be_valid
      expect(ticket.errors[:book_date]).to include("can't be blank")
    end

    it 'is not valid without price' do
      ticket = Ticket.new(book_time: Time.now, book_date: Date.today, train_id: 1, user_id: 1)
      expect(ticket).not_to be_valid
      expect(ticket.errors[:price]).to include("can't be blank")
    end

    it 'is not valid with negative price' do
      ticket = Ticket.new(book_time: Time.now, book_date: Date.today, price: -50, train_id: 1, user_id: 1)
      expect(ticket).not_to be_valid
      expect(ticket.errors[:price]).to include("must be greater than or equal to 0")
    end

    it 'is not valid without train_id' do
      ticket = Ticket.new(book_time: Time.now, book_date: Date.today, price: 50, user_id: 1)
      expect(ticket).not_to be_valid
      expect(ticket.errors[:train_id]).to include("can't be blank")
    end

    it 'is not valid without user_id' do
      ticket = Ticket.new(book_time: Time.now, book_date: Date.today, price: 50, train_id: 1)
      expect(ticket).not_to be_valid
      expect(ticket.errors[:user_id]).to include("can't be blank")
    end    
  end

  describe "associations" do
    it "belongs to a user" do
      association = described_class.reflect_on_association(:user)
      expect(association.macro).to eq(:belongs_to)
    end

    it "belongs to a train" do
      association = described_class.reflect_on_association(:train)
      expect(association.macro).to eq(:belongs_to)
    end
  end
end
