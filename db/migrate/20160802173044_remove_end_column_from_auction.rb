class RemoveEndColumnFromAuction < ActiveRecord::Migration
  def change
    remove_column :auctions, :end
    add_column :auctions, :end, :date
  end
end
