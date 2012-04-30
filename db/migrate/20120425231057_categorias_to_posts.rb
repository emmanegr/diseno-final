class CategoriasToPosts < ActiveRecord::Migration
def self.up
    create_table :categorias_posts, :id => false do |t|
      t.integer :post_id
      t.integer :categoria_id
    end
  end

  def self.down
    drop_table :post_id
    drop_table :categoria_id
  end
end