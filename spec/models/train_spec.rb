require 'rails_helper'

RSpec.describe Train, type: :model do
  describe "associations" do
    it { should belong_to(:metro_service) }
    it { should have_many(:tickets) }
  end

  describe "validations" do
    it { should validate_presence_of(:name) } 
  end

  describe "class methods" do
    describe ".per_page" do
      it "should be set to 5" do
        expect(Train.per_page).to eq(5)
      end
    end
  end
end
