class CreateFileGradework < ActiveRecord::Migration[5.0]
  def change
    create_table :file_gradeworks do |t|
      t.string :name
      t.string :path
      t.string :description
      t.string :size
    end
  end
end
