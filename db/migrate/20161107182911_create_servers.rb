class CreateServers < ActiveRecord::Migration
  def change
    create_table :servers do |t|
      t.text :name
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
