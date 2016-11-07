class PageSerializer < ActiveModel::Serializer
  attributes :id, :title, :body, :code, :image, :server
  has_one :user

  def server
    object.server_id
  end
end
