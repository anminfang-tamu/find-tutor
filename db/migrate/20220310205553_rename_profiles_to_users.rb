class RenameProfilesToUsers < ActiveRecord::Migration[5.0]
  def change
    rename_table :profiles, :users
  end
end
