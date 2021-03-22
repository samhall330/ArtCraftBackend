class SoftwareSerializer < ActiveModel::Serializer
  attributes :id, :name, :soft_link, :user_id
end
