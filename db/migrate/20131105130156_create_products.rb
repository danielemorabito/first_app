class CreateProducts < ActiveRecord::Migration
  def self.up
    create_table :products do |t|
      t.string :name
      t.decimal :unit_price

      t.timestamps
    end
  end

  def self.down
    drop_table :products
  end
end
