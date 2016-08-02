class User < ActiveRecord::Base
  has_secure_password

  has_many :auctions, dependent: :destroy
end
