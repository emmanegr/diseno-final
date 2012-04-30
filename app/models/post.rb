class Post < ActiveRecord::Base
  has_and_belongs_to_many :categorias
  belongs_to :user
  has_many :comentarios
end
