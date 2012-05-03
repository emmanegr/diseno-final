class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :titulo
      t.string :subtitulo
      t.text :descripcion
      t.references :user
      t.integer :gusta
      t.integer :nogusta
      t.text :comentarios
      t.integer :vistas
      t.references :categoria
      t.string :current_session

      t.timestamps
    end
    add_index :posts, :user_id
    add_index :posts, :categoria_id
  end
end
