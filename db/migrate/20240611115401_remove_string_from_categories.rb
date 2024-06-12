# frozen_string_literal: true

# This migration removes the 'string' column from the 'categories' table.
class RemoveStringFromCategories < ActiveRecord::Migration[7.0]
  def change
    remove_column :categories, :string, :string
  end
end
