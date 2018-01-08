class RenameColumnNameinImagestoPicture < ActiveRecord::Migration[5.1]
  def change
    rename_column :images, :name, :picture
  end
end
