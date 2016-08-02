class AddPublishColumnToAuction < ActiveRecord::Migration
  def change
    add_column :auctions, :published?, :boolean, default: false
  end
end
