# Represents an expense that can be associated with categories.
class Expense < ApplicationRecord
  belongs_to :author, class_name: 'User', foreign_key: 'author_id'
  has_and_belongs_to_many :categories, join_table: 'categories_expenses'

  validates :name, :amount, presence: true
  validates :amount, numericality: { greater_than: 0 }
end
