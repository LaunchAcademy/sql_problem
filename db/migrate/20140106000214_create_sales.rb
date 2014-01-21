class CreateSales < ActiveRecord::Migration
  def change
    create_table :sales do |t|
      t.references :book, index: true
      t.integer :price
      t.datetime :sold_date

      t.timestamps
    end
  end
end
