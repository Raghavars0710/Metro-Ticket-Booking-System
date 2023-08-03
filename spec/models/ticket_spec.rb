require 'rails_helper'

RSpec.describe Ticket, type: :model do
  describe "associations" do
    it { should belong_to(:user) }
    it { should belong_to(:train) }
  end
end

