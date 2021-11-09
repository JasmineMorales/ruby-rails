class Book < ApplicationRecord
    validates :name, presence: true, uniqueness: true
    validates :description, presence: true
    has_many :librars
    has_many :users, through: :librars
    has_many :book_has_author
    has_many :author, through: :book_has_author
    has_many :book_has_genre
    has_many :genre, through: :book_has_genre
end
