class Blog < ApplicationRecord
    belongs_to :usuario, dependent: :destroy 
 
    validates_presence_of :titulo
    validates_presence_of :contenido

end
