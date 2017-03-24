class CreateFeedbacks < ActiveRecord::Migration[5.0]
  def change
    create_table :feedbacks do |t|
      t.belongs_to :director, foreign_key: true
      t.belongs_to :gradework, foreign_key: true
      t.integer :score
      t.text :anotation

      t.timestamps
    end
  end
end
