class AddBoardToPages < ActiveRecord::Migration
  def change
    add_reference :pages, :board, index: true, foreign_key: true
  end
end
