class User < ApplicationRecord
    has_secure_password
    has_many :saved_guns
    validates :username, presence: true
    validates :email, presence: true
    validates :password, presence: true
    validates :username, length: {in: 4..20}
    validates :email, uniqueness: true
    has_many :completed_tasks
    has_many :in_progress_tasks
end
