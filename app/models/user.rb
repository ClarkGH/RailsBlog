class User < ApplicationRecord
  has_many :articles, dependent: :destroy
  has_many :comment, dependent: :destroy
  validates :name, presence: true,
                   length: { minimum: 3 }
end
