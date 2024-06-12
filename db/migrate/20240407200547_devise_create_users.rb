# frozen_string_literal: true

# This migration creates the 'categories' table with columns for
# 'name', 'icon', and 'string', along with a reference to the 'user' table.
# It also includes timestamps.
class CreateCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :categories do |t|
      t.string :name
      t.string :icon
      t.string :string
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
