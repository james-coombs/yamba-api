class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :title
      t.string :body
    #  t.string :code
    #  t.string :image
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
