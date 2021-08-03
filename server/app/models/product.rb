# frozen_string_literal: true

class Product < ApplicationRecord
  belongs_to :category, class_name: 'Category', foreign_key: 'category' # rubocop:disable Rails/InverseOf
end
