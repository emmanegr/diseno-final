class AddImagenToBeca < ActiveRecord::Migration
  def self.up
    change_table :becas do |t|
      t.has_attached_file :fotobeca
    end
  end

  def self.down
    drop_attached_file :becas, :fotobeca
  end

end
