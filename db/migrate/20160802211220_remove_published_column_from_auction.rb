class RemovePublishedColumnFromAuction < ActiveRecord::Migration
  def change
    remove_column :auctions, :published
    add_column :auctions, :published, :boolean
  end
end
