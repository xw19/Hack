class CreateChildren < ActiveRecord::Migration
  def change
    create_table :children do |t|
      t.integer :uid
      t.references :home, index: true, foreign_key: true
      t.string :name
      t.string :place
      t.integer :age
      t.string :gender
      t.date :since
      t.string :password

      t.timestamps null: false
    end
  end
end
