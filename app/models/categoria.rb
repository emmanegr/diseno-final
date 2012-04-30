class Categoria < ActiveRecord::Base
has_and_belongs_to_many :users
has_and_belongs_to_many :posts
def to_label
    "#{nombre}"
  end
end
