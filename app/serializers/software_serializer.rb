class SoftwareSerializer < ActiveModel::Serializer
  attributes :id, :soft_name, :soft_link, :user_id
end
