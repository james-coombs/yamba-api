class PageSerializer < ActiveModel::Serializer
  attributes :id, :title, :body, :server, :can_be_deleted, :image, :image_url,
             :attached_image, :image_file_name
  has_one :user

  def server
    object.server_id
  end

  def can_be_deleted
    scope == object.user
  end

  def attached_image
    scope == object.image_file_name
  end
end
