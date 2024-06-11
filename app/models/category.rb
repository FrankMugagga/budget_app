# frozen_string_literal: true

class Category < ApplicationRecord
  belongs_to :user, class_name: 'User', foreign_key: 'user_id'
  has_and_belongs_to_many :expenses, join_table: 'categories_expenses', dependent: :destroy
end
