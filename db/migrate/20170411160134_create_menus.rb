class CreateMenus < ActiveRecord::Migration
  def self.up
    create_table :menus do |t|
      t.column :name, :string, :limit => 32, :null => false
      t.column :price, :integer
      t.column :key, :integer
      t.column :created_at, :timestamp
    end
  end

  def self.down
      drop_table :menus
   end
end
