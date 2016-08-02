class CreateAuctions < ActiveRecord::Migration
  def change
    create_table :auctions do |t|
      t.string :title
      t.text :details
      t.float :end
      t.float :reserve
      t.timestamps null: false
    end
  end
end
