class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.references :child, index: true, foreign_key: true
      t.text :message

      t.timestamps null: false
    end
  end
end
