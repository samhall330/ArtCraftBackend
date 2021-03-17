class User < ApplicationRecord
    has_secure_password
    
    has_many :projects, dependent: :delete_all
    has_many :collaborators, dependent: :delete_all
    has_many :specialties, dependent: :delete_all
    has_many :equipments, dependent: :delete_all
    has_many :softwares, dependent: :delete_all

    validates :username, uniqueness: { case_sensitive: false }
end
