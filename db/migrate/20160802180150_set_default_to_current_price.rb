class SetDefaultToCurrentPrice < ActiveRecord::Migration
  def change
    change_column :auctions, :current_price, :float, default: 0
  end
end
