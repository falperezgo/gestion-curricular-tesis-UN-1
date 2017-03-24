class CreateFeedback < ActiveRecord::Migration[5.0]
  def change
    create_table :feedbacks do |t|
      t.reference :director
      t.number :score
      t.text :anotation
      t.timestamps
    end
  end
end
