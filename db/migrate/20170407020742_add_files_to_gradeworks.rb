class AddFilesToGradeworks < ActiveRecord::Migration[5.0]
  def change
    add_column :gradeworks, :files, :json
  end
end
