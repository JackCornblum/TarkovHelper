class User < ApplicationRecord
    has_secure_password
    has_many :saved_guns
    validates :username, presence: true
    validates :email, presence: true
    validates :password_digest, presence: true
    validates :username, length: {in: 4..20}
    validates :email, uniqueness: true
end
