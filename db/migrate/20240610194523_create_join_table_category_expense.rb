# frozen_string_literal: true

# This migration creates a join table for categories and expenses.
# It adds indexes for the combination of category_id and expense_id,
# and for expense_id and category_id to optimize querying.
class CreateJoinTableCategoryExpense < ActiveRecord::Migration[7.0]
  def change
    create_join_table :categories, :expenses do |t|
      t.index %i[category_id expense_id]
      t.index %i[expense_id category_id]
    end
  end
end
