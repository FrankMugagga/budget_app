# frozen_string_literal: true

class CreateJoinTableCategoryExpense < ActiveRecord::Migration[7.0]
  def change
    create_join_table :categories, :expenses do |t|
      t.index %i[category_id expense_id]
      t.index %i[expense_id category_id]
    end
  end
end
