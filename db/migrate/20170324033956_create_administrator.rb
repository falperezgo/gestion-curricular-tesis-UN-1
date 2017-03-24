class CreateAdministrator < ActiveRecord::Migration[5.0]
  def change
    create_table :administrators do |t|
      t.string :firstname
      t.string :lastname
      t.string :email
      t.string :phone
      t.number :identification
      t.timestamps
    end
  end
end
