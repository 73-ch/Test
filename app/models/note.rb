class Note < ApplicationRecord

  validates :title, presence: true, format: { with: /\A[a-z0-9]+\z/i }
  validates :priority, presence: true, uniqueness: true, numericality: {only_integer: true}
  validates :content, length: {maximum: 140}
end
