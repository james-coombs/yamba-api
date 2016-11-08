class PageSerializer < ActiveModel::Serializer
  attributes :id, :title, :body, :server, :can_be_deleted
  has_one :user

  def server
    object.server_id
  end

  def can_be_deleted
    scope == object.user
  end
end
