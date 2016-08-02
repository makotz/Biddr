class EndDateRenewName < ActiveRecord::Migration
  def change
    remove_column :auctions, :end
    add_column :auctions, :enddate, :date
  end
end
