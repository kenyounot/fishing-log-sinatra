class User < ActiveRecord::Base
    has_many :logs
    has_secure_password

    validates :email, uniqueness: true
    validates :name, presence: true
    validates :email, presence: true
end