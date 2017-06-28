class CreateRestaulantInfos < ActiveRecord::Migration
  def self.up
    create_table :restaulant_infos do |t|
      t.column :name, :string, :limit => 32, :null => false
      t.column :img, :string
      t.column :location, :string
      t.column :address, :string
      t.column :phone, :string
      t.column :business_hours, :string
      t.column :between_price_min, :integer
      t.column :between_price_max, :integer
      t.column :created_at, :timestamp
    end
  end

  def self.down
    drop_table :restaulant_infos
  end
end
