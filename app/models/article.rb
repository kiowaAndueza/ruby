class Article < ApplicationRecord
  belongs_to :category, class_name: 'Category', foreign_key: 'category_id'
  has_one_attached :img

  validates :title, presence: true, length: {minimum: 2, maximum: 50}
  validates :img, presence: true
  validates :url, presence: true, length: {minimum: 2, maximum: 100}
  validates :island, presence: true, length: {minimum: 2, maximum: 15}
  validates :category_id, presence: true
  validates :exturl, presence: true, length: {minimum: 2, maximum: 300}
  validates :info, presence: true, length: {minimum: 2, maximum: 1000}
end
