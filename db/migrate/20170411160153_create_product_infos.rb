class CreateProductInfos < ActiveRecord::Migration
  def self.up
    create_table :product_infos do |t|
      t.column :name, :string, :limit => 32, :null => false
      t.column :price, :integer
      t.column :rogoCU, :Boolean
      t.column :rogoGS, :Boolean
      t.column :rogoSeven, :Boolean
      t.column :img, :string
      t.column :created_at, :timestamp
    end
  end

  def self.down
    drop_table :product_infos
  end
end
