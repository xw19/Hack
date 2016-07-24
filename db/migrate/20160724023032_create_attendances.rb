class CreateAttendances < ActiveRecord::Migration
  def change
    create_table :attendances do |t|
      t.references :child, index: true, foreign_key: true
      t.date :date
      t.boolean :present
      t.string :health

      t.timestamps null: false
    end
  end
end
