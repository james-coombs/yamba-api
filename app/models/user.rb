class User < ActiveRecord::Base
  include Authentication
  has_many :examples
  has_many :pages
  has_many :boards
end
