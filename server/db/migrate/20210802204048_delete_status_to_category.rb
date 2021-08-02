class DeleteStatusToCategory < ActiveRecord::Migration[6.1]
  def change
    remove_column :category, :status, :string
  end
end
