class Recipe < ApplicationRecord
    validates :name, presence: true, uniqueness: true
    validates :date, presence: true
    validates :price, presence: true, numericality: { greater_than: 0 }
    validates :kind, presence: true, uniqueness: true
    validates :content, presence: true, uniqueness: true, length:{minimum: 10}
end
