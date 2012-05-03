class DesToBeca < ActiveRecord::Migration
  def self.up
    add_column :becas, :descripcion, :text
      end

  def self.down
    remove_column :becas, :descripcion
      end
end
