class UserSerializer < ActiveModel::Serializer
    attributes :id, :username, :name, :phone, :bio
    has_many :projects
    has_many :specialties
    has_many :equipment
    has_many :softwares
    has_many :collaborators
  end