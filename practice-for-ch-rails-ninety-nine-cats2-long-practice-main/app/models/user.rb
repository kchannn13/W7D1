class User < ApplicationRecord
    validates :username, presence:true, uniqueness:true
    validates :password_digest, presence:true

    before_validation 
end