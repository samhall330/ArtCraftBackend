class ProjectSerializer < ActiveModel::Serializer
  attributes :id, :title, :user_id, :location, :duration, :project_type
  has_many :collaborators
end
