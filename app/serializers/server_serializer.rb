class ServerSerializer < ActiveModel::Serializer
  attributes :id, :name, :pages, :can_be_deleted
  has_one :user

  def pages
    object.pages.pluck(:id)
  end

  def can_be_deleted
    scope == object.user
  end
end
