class Beca < ActiveRecord::Base
has_attached_file :fotobeca, :styles => { :big => "266x266#", :thumb => "100x100#" }
end
