class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.decimal :rent
      t.decimal :parking
      t.decimal :late_fee
      t.decimal :other
      t.decimal :application_fee
      t.decimal :deposit
      t.decimal :move_in_other
      t.string :promo_code
      t.decimal :total
      t.decimal :discounts

      t.timestamps
    end
  end
end
