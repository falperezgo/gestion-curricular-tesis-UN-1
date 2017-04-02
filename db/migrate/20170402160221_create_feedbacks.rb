class CreateFeedbacks < ActiveRecord::Migration[5.0]
  def change
    create_table :feedbacks do |t|
      t.text :anotations
      t.integer :score
      t.references :gradework, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
