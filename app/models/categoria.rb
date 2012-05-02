class Categoria < ActiveRecord::Base
has_and_belongs_to_many :users
has_and_belongs_to_many :posts
has_and_belongs_to_many :concursos
def to_label
    "#{nombre}"
  end
end
