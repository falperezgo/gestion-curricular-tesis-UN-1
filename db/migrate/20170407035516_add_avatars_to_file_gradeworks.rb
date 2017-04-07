class AddAvatarsToFileGradeworks < ActiveRecord::Migration[5.0]
  def change
    add_column :file_gradeworks, :avatars, :json
  end
end
