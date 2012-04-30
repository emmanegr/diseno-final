class CreateComentarios < ActiveRecord::Migration
  def change
    create_table :comentarios do |t|
      t.text :contenido
      t.references :user
      t.references :post

      t.timestamps
    end
    add_index :comentarios, :user_id
    add_index :comentarios, :post_id
  end
end
