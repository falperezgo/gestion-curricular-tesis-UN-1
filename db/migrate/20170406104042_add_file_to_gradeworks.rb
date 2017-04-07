class AddFileToGradeworks < ActiveRecord::Migration[5.0]
  def change
    add_column :gradeworks, :file, :string
  end
end
