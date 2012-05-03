class AgregarCamposToUser < ActiveRecord::Migration
  def self.up
    add_column :users, :nombre, :string
    add_column :users, :apellido, :string
    add_column :users, :profesion, :string
    add_column :users, :compania, :string
    add_column :users, :web, :string
    add_column :users, :pais, :string
    add_column :users, :ciudad, :string
    add_column :users, :about, :text    
  end

  def self.down
    remove_column :users, :nombre
    remove_column :users, :apellido
    remove_column :users, :profesion
    remove_column :users, :compania
    remove_column :users, :web
    remove_column :users, :pais
    remove_column :users, :ciudad
    remove_column :users, :about
  end
end



