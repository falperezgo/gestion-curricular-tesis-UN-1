class CreateGradeworksUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :gradeworks_users do |t|
      t.references :gradework, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
