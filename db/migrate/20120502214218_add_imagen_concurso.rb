class AddImagenConcurso < ActiveRecord::Migration
  def self.up
    change_table :concursos do |t|
      t.has_attached_file :fotoconcurso
    end
  end

  def self.down
    drop_attached_file :concursos, :fotoconcurso
  end
end
