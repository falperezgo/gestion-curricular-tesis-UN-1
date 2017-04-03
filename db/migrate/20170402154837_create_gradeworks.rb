class CreateGradeworks < ActiveRecord::Migration[5.0]
  def change
    create_table :gradeworks do |t|
      t.string :name
      t.text :description
      t.string :status
      t.date :delivery_date
      t.date :begin_date
      t.time :hour
      t.text :locale
      t.string :semester

      t.timestamps
    end
  end
end
