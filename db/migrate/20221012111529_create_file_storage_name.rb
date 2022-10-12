class CreateFileStorageName < ActiveRecord::Migration[7.0]
  def change
    add_column :file_storages, :database_name, :string
  end
end
