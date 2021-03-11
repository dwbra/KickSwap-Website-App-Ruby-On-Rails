class AddBuyersIdToListings < ActiveRecord::Migration[6.0]
  def change
    add_column :listings, :buyer_id, :bigint
  end
end
