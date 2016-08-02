class AuctionsController < ApplicationController

  def new
    @auction = Auction.new
  end

  def create
    @auction = Auction.new auction_params
    if @auction.save
      redirect_to auction_path(@auction)
    else
      render :new
    end
  end


  def show
    @auction = Auction.find params[:id]
    @bid = Bid.new
  end

  private

  def auction_params
    params.require(:auction).permit(:title, :details, :enddate, :reserve)
  end

end
