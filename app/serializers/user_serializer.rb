class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :boards, :pages
end
