class AddPrefeToUser < ActiveRecord::Migration
  def self.up
    add_column :users, :prefe1, :string
    add_column :users, :prefe2, :string
    add_column :users, :prefe3, :string
    
  end

  def self.down
    remove_column :users, :prefe1
    remove_column :users, :prefe2
    remove_column :users, :prefe3
    
  end
end