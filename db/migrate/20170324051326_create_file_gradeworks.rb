class CreateFileGradeworks < ActiveRecord::Migration[5.0]
  def change
    create_table :file_gradeworks do |t|
      t.string :name, null: false
      t.string :path, null: false
      t.string :description, null: false
      t.string :size, null: false
      t.references :gradework, foreign_key: true

      t.timestamps
    end
  end
end
