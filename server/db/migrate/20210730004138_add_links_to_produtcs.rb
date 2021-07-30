class AddLinksToProdutcs < ActiveRecord::Migration[6.1]
  def change
    add_column :products, :links, :string
  end
end
