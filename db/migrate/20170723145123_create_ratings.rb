class CreateRatings < ActiveRecord::Migration[5.1]
  def change
    create_table :ratings do |t|
      t.references :user, foreign_key: true
      t.integer :stars
      t.text :comment
      t.integer :rateable_id
      t.string :rateable_type

      t.timestamps
    end
  end
end
