class Concurso < ActiveRecord::Base

  has_and_belongs_to_many :categorias
  has_attached_file :fotoconcurso, :styles => { :big => "266x266#", :thumb => "100x100#" }

end
