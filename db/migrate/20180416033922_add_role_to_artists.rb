class AddRoleToArtists < ActiveRecord::Migration[5.0]
  def change
    add_column :artists, :role, :integer
  end
end
