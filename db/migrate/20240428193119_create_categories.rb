# frozen_string_literal: true

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
