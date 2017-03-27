class CreateDirectors < ActiveRecord::Migration[5.0]
  def change
    create_table :directors do |t|
      t.string :firstname, null: false
      t.string :lastname, null: false
      t.string :email, null: false, uniqueness: true
      t.string :phone, null: false
      t.integer :identification, null: false, uniqueness: true

      t.timestamps
    end
  end
end
