class Genre < ApplicationRecord
    validates :name, presence: true
    validates :description, presence: true
    has_many :book_has_genre
    has_many :books, through: :book_has_genre
end
