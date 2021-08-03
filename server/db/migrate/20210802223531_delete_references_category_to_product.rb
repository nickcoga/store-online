class DeleteReferencesCategoryToProduct < ActiveRecord::Migration[6.1]
  def change
    remove_reference(:product, :category, index: true, foreign_key: true)
  end
end
