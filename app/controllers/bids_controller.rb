class BidsController < ApplicationController
  before_action :authenticate_user!

  def create
    @auction = Auction.find params[:auction_id]
    @bid = Bid.new bid_params
    @bid.auction = @auction
    if @bid.amount > @auction.current_price
      @bid.save
      @auction.update(current_price: @bid.amount)
      redirect_to auction_path(@auction)
    else
      redirect_to auction_path(@auction)
    end
  end

  private

  def bid_params
    params.require(:bid).permit(:amount)
  end

end
