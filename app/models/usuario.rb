class Usuario < ApplicationRecord
    has_secure_password
    has_many :blogs

    def autor 
        self.role == 'autor' 
    end
end
