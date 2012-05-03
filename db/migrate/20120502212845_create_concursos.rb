class CreateConcursos < ActiveRecord::Migration
  def change
    create_table :concursos do |t|
      t.string :titulo
      t.text :descripcion
      t.references :categoria
      t.string :web
      t.string :entrega
      t.string :premio
      t.string :jurado

      t.timestamps
    end
    add_index :concursos, :categoria_id
  end
end
