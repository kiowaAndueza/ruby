class Category < ApplicationRecord
  has_many :articles, class_name: 'Article', foreign_key: 'category_id'
  has_one_attached :img

  validates :title, presence: true, length: {minimum: 2, maximum: 20}
  validates :img, presence: true
  validates :url, presence: true, length: {minimum: 2, maximum: 60}
end
