class PageSerializer < ActiveModel::Serializer
  attributes :id, :title, :body, :code, :image
  has_one :user
end
