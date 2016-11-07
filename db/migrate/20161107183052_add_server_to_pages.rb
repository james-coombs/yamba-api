class AddServerToPages < ActiveRecord::Migration
  def change
    add_reference :pages, :server, index: true, foreign_key: true
  end
end
