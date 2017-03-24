class CreateFileGradeworks < ActiveRecord::Migration[5.0]
  def change
    create_table :file_gradeworks do |t|
      t.string :name
      t.string :path
      t.string :description
      t.string :size
      t.references :gradework, foreign_key: true

      t.timestamps
    end
  end
end
