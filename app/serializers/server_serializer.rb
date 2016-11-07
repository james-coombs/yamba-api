class ServerSerializer < ActiveModel::Serializer
  attributes :id, :name, :pages
  has_one :user
end
