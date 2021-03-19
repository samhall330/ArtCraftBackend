class UserSerializer < ActiveModel::Serializer
    attributes :id, :username, :name, :phone, :bio, :profile_pic
    has_many :projects
    has_many :specialties
    has_many :equipments
    has_many :softwares
    has_many :collaborators
  end