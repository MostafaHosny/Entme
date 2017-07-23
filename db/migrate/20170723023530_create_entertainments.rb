class CreateEntertainments < ActiveRecord::Migration[5.1]
  def change
    create_table :entertainments do |t|
      t.string :title , null: false, default: ''
      t.text :description
      t.boolean :featured , null: false, default: false
      t.float :price
      t.string :type , null: false, default: 'Film'
      t.float :rating
      t.string :media_link

      t.timestamps
    end
  end
end
