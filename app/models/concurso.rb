class Concurso < ActiveRecord::Base
  belongs_to :categoria
  has_attached_file :fotoconcurso, :styles => { :big => "266x266#", :thumb => "100x100#" }

end
