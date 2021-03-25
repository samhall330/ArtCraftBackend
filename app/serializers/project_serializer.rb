class ProjectSerializer < ActiveModel::Serializer
  attributes :id, :title, :user_id, :location, :duration, :project_type, :start_date
  has_many :collaborators
end
