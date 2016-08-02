class Auction < ActiveRecord::Base
  has_many :bids, dependent: :destroy

  validates :title, presence: true
end
