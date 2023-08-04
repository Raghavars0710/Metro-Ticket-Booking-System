require 'rails_helper'

RSpec.describe MetroService, type: :model do
  describe "validations" do
    it 'is valid with valid attributes' do
      metro_service = MetroService.new(source: "Vijay Nagar Metro Station", destination: "Sukhliya Metro Station")
      expect(metro_service).to be_valid
    end

    it 'is not valid without a source' do
      metro_service = MetroService.new(destination: "Sukhliya Metro Station")
      expect(metro_service).not_to be_valid
      expect(metro_service.errors[:source]).to include("can't be blank")
    end

    it 'is not valid without a destination' do
      metro_service = MetroService.new(source: "Vijay Nagar Metro Station")
      expect(metro_service).not_to be_valid
      expect(metro_service.errors[:destination]).to include("can't be blank")
    end
  end

  describe "associations" do
    it "has many trains" do
      association = described_class.reflect_on_association(:trains)
      expect(association.macro).to eq(:has_many)
      expect(association.options[:dependent]).to eq(:destroy)
    end
  end
end
