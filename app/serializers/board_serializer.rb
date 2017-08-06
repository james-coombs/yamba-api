class BoardSerializer < ActiveModel::Serializer
  attributes :id, :name, :pages, :can_be_deleted
  has_one :user

  # plucks id attribute from pages attached to a board
  def pages
    object.pages.pluck(:id)
  end

  # creates property that checks user ownership of a page
  def can_be_deleted
    scope == object.user
  end
end
