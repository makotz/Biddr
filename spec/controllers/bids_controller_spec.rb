require 'rails_helper'

RSpec.describe BidsController, type: :controller do

  let(:auction) {FactoryGirl.create(:auction)}

  context "with valid request" do

    def valid_request
      post :create, auction_id: auction.id, bid: {amount: 40}
    end

    it "saves as a new bid in the Bid database" do
      before_count = Bid.count
      valid_request
      after_count = Bid.count
      expect(after_count - before_count).to eq(1)
    end

  end

  context "with invalid request (bid amount is smaller than current price of auction)" do

    def invalid_request
      post :create, auction_id: auction.id, bid: {amount: 10}
    end

    it "does not save the new bid" do
      before_count = Bid.count
      invalid_request
      after_count = Bid.count
      expect(after_count).to eq(before_count)
    end

  end

end
