class Post < ActiveRecord::Base
  has_and_belongs_to_many :categorias
  belongs_to :user
  has_many :comentarios
  has_attached_file :fotopost1, :styles => { :ultraBig => "800x600#", :big => "600x400#", :thumb => "202x158#" }
  has_attached_file :fotopost2, :styles => { :big => "600x400#", :thumb => "202x158#" }
  has_attached_file :fotopost3, :styles => { :big => "600x400#", :thumb => "202x158#" }
  has_attached_file :fotopost4, :styles => { :big => "600x400#", :thumb => "202x158#" }
  has_attached_file :fotopost5, :styles => { :big => "600x400#", :thumb => "202x158#" }


end
