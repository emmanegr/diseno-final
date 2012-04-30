class AddCategoriasToUser < ActiveRecord::Migration
def self.up
    create_table :categorias_users, :id => false do |t|
      t.integer :categoria_id
      t.integer :user_id
    end
  end

  def self.down
    drop_table :categorias_users
  end
end
