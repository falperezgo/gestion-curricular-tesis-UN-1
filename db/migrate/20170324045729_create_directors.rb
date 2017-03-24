class CreateDirectors < ActiveRecord::Migration[5.0]
  def change
    create_table :directors do |t|
      t.string :firstname
      t.string :lastname
      t.string :email
      t.string :phone
      t.integer :identification

      t.timestamps
    end
  end
end
