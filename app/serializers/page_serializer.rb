class PageSerializer < ActiveModel::Serializer
  attributes :id, :title, :body, :code, :image, :references
end
