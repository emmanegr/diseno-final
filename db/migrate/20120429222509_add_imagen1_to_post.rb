class AddImagen1ToPost < ActiveRecord::Migration
  def self.up
    change_table :posts do |t|
      t.has_attached_file :fotopost1
    end
  end

  def self.down
    drop_attached_file :posts, :fotopost1
  end
end
