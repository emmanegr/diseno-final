class AddImagenmasToPost < ActiveRecord::Migration
  def self.up
    change_table :posts do |t|
      t.has_attached_file :fotopost2
      t.has_attached_file :fotopost3
      t.has_attached_file :fotopost4
      t.has_attached_file :fotopost5
    end
  end

  def self.down
    drop_attached_file :posts, :fotopost2
    drop_attached_file :posts, :fotopost3
    drop_attached_file :posts, :fotopost4
    drop_attached_file :posts, :fotopost5
  end
end
