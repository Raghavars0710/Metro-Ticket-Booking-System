require 'rails_helper'

RSpec.describe User, type: :model do
  describe "validations" do
    it 'is valid with valid attributes' do
      user = User.new(
        email: "raghav@gmail.com",
        encrypted_password: "encrypted_password_value",
        password: "123456",
        name: "Raghav Sharma",
        contact_number: 1234567890,
        gender: "male",
        confirmed_at: Time.now
      )
      expect(user).to be_valid
    end

    it 'is not valid without a name' do
      user = User.new(
        email: "raghav@gmail.com",
        encrypted_password: "encrypted_password_value",
        password: "123456",
        contact_number: 1234567890,
        gender: "male",
        confirmed_at: Time.now
      )
      expect(user).not_to be_valid
      expect(user.errors[:name]).to include("can't be blank")
    end

    it 'is not valid with a short name' do
      user = User.new(
        email: "raghav@gmail.com",
        encrypted_password: "encrypted_password_value",
        password: "123456",
        name: "J",
        contact_number: 1234567890,
        gender: "male",
        confirmed_at: Time.now
      )
      expect(user).not_to be_valid
      expect(user.errors[:name]).to include("is too short (minimum is 2 characters)")
    end

    it 'is not valid without a contact_number' do
      user = User.new(
        email: "raghav@gmail.com",
        encrypted_password: "encrypted_password_value",
        password: "123456",
        name: "Raghav Sharma",
        gender: "male",
        confirmed_at: Time.now
      )
      expect(user).not_to be_valid
      expect(user.errors[:contact_number]).to include("can't be blank")
    end

    it 'is not valid with a contact_number of invalid length' do
      user = User.new(
        email: "raghav@gmail.com",
        encrypted_password: "encrypted_password_value",
        password: "123456",
        name: "Raghav Sharma",
        contact_number: 123456,
        gender: "male",
        confirmed_at: Time.now
      )
      expect(user).not_to be_valid
      expect(user.errors[:contact_number]).to include("is the wrong length (should be 10 characters)")
    end

    it 'is not valid without a gender' do
      user = User.new(
        email: "raghav@gmail.com",
        encrypted_password: "encrypted_password_value",
        password: "123456",
        name: "Raghav Sharma",
        contact_number: 1234567890,
        confirmed_at: Time.now
      )
      expect(user).not_to be_valid
      expect(user.errors[:gender]).to include("must be male, female, or other")
    end

    it 'is not valid with an invalid gender' do
      user = User.new(
        email: "raghav@gmail.com",
        encrypted_password: "encrypted_password_value",
        password: "123456",
        name: "Raghav Sharma",
        contact_number: 1234567890,
        gender: "invalid_gender",
        confirmed_at: Time.now
      )
      expect(user).not_to be_valid
      expect(user.errors[:gender]).to include("must be male, female, or other")
    end
  end

  describe "associations" do
    it "has many members" do
      association = described_class.reflect_on_association(:members)
      expect(association.macro).to eq(:has_many)
      expect(association.options[:dependent]).to eq(:destroy)
    end

    it "has many tickets" do
      association = described_class.reflect_on_association(:tickets)
      expect(association.macro).to eq(:has_many)
      expect(association.options[:dependent]).to eq(:destroy)
    end
  end
end
