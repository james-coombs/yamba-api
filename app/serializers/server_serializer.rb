class ServerSerializer < ActiveModel::Serializer
  attributes :id, :name, :pages
  has_one :user

  def pages
    object.pages.pluck(:id)
  end
end
