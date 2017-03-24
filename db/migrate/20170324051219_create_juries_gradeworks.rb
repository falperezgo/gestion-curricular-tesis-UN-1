class CreateJuriesGradeworks < ActiveRecord::Migration[5.0]
  def change
    create_table :juries_gradeworks do |t|
      t.references :jury, foreign_key: true
      t.references :gradework, foreign_key: true

      t.timestamps
    end
  end
end
