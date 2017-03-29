class CreateGradeworks < ActiveRecord::Migration[5.0]
  def change
    create_table :gradeworks do |t|
      t.string :name, null: false
      t.text :description, null: false
      t.string :status, null: false
      t.date :delivery_date, null: false
      t.date :begin_date, null: false
      t.time :hour, null: false
      t.text :locale, null: false
      t.string :semester, null: false

      t.timestamps
    end
  end
end
