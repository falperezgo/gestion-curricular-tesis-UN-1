class CreateDirectorsGradeworks < ActiveRecord::Migration[5.0]
  def change
    create_table :directors_gradeworks do |t|
      t.references :director, foreign_key: true
      t.references :gradework, foreign_key: true

      t.timestamps
    end
  end
end
