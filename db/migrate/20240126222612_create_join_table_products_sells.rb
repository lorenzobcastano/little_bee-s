class CreateJoinTableProductsSells < ActiveRecord::Migration[7.1]
  def change
    create_join_table :products, :sells do |t|
      # t.index [:product_id, :sell_id]
      # t.index [:sell_id, :product_id]
    end
  end
end
