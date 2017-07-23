class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.references :user, foreign_key: true
      t.references :entertainment, foreign_key: true
      t.integer :state

      t.timestamps
    end
  end
end
