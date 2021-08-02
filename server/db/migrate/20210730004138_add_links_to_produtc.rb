class AddLinksToProdutc < ActiveRecord::Migration[6.1]
  def change
    add_column :product, :links, :string
  end
end
