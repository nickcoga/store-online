# frozen_string_literal: true

class Category < ApplicationRecord
  has_many :products, class_name: 'Product', foreign_key: 'category', dependent: :destroy # rubocop:disable Rails/InverseOf
end
