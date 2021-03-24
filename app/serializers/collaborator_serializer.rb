class CollaboratorSerializer < ActiveModel::Serializer
  attributes :id, :project_id, :user_id, :username, :bio, :profile_pic

end
