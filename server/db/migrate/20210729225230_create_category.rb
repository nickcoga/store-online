# frozen_string_literal: true

class CreateCategory < ActiveRecord::Migration[6.1]
  def change
    create_table :category do |t|
      t.string :name
      t.integer :status

      t.timestamps
    end
  end
end
