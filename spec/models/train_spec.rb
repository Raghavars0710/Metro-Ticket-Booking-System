require 'rails_helper'

RSpec.describe Train, type: :model do

  describe "validations" do
    it 'validate with valid attributes' do
      metro_service = MetroService.create(source: "Vijay Nagar Metro Station",destination: "Sukhliya Metro Station")
      train = Train.create(name: "Shivaji metro train",train_number: 589674,source: "Vijay Nagar Metro Station",destination: "Sukhliya Metro Station",metro_service_id: metro_service.id)
      expect(train).to be_valid
    end

    it 'not be validate with duplicate name' do
      metro_service = MetroService.create(source: "Vijay Nagar Metro Station",destination: "Sukhliya Metro Station")
      Train.create(name: "Shivaji metro train",train_number: 589674,source: "Vijay Nagar Metro Station",destination: "Sukhliya Metro Station",metro_service_id: metro_service.id)
      train = Train.new(name: "Shivaji metro train",train_number: 589674,source: "Vijay Nagar Metro Station",destination: "Sukhliya Metro Station",metro_service_id: metro_service.id)
      expect(train).not_to be_valid
      expect(train.errors[:name]).to include("has already been taken")
    end

    it 'not be valid without name' do
      metro_service = MetroService.create(source: "Vijay Nagar Metro Station",destination: "Sukhliya Metro Station")
      train = Train.new(train_number: 589674,source: "Vijay Nagar Metro Station",destination: "Sukhliya Metro Station",metro_service_id: metro_service.id)
      expect(train).not_to be_valid
      expect(train.errors[:name]).to include("can't be blank")
    end

    it 'not be valid with non numeric train_number' do
      metro_service = MetroService.create(source: "Vijay Nagar Metro Station",destination: "Sukhliya Metro Station")
      train = Train.new(name: "Shivaji metro train",
        train_number: "xyz",
        source: "Vijay Nagar Metro Station",
        destination: "Sukhliya Metro Station",
        metro_service_id: metro_service.id
        )
      expect(train).not_to be_valid
      expect(train.errors[:train_number]).to include('is not a number')
    end

    it 'not be validate with duplicate train_number' do
      metro_service = MetroService.create(source: "Vijay Nagar Metro Station",destination: "Sukhliya Metro Station")
      Train.create(name: "Shivaji metro train",train_number: 589674,source: "Vijay Nagar Metro Station",destination: "Sukhliya Metro Station",metro_service_id: metro_service.id)
      train = Train.new(name: "Shivaji metro train",
        train_number: 589674,
        source: "Vijay Nagar Metro Station",
        destination: "Sukhliya Metro Station",
        metro_service_id: metro_service.id
        )
      expect(train).not_to be_valid
      expect(train.errors[:train_number]).to include("has already been taken")
    end
  end
end
