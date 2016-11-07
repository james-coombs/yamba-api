class Page < ActiveRecord::Base
  belongs_to :server
  belongs_to :user
end
