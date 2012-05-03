class CreateBecas < ActiveRecord::Migration
  def change
    create_table :becas do |t|
      t.string :nombre
      t.string :pais
      t.string :web
      t.string :fecha
      t.text :carreras
      t.string :representante
      t.string :contacto

      t.timestamps
    end
  end
end
