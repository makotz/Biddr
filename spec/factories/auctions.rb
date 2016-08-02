FactoryGirl.define do
  factory :auction do
    title "Kenans phone"
    details "Test Auction item details!"
    enddate "2016-08-20"
    reserve 200
    current_price 20
  end
end
