class Author < ApplicationRecord
    validates :name, presence: true, uniqueness: true
    has_many :book_has_author
    has_many :books, through: :book_has_author
end
