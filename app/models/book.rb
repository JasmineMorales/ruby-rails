class Book < ApplicationRecord
    validates :name, presence: true, uniqueness: true
    validates :description, presence: true
    has_many :librars
    has_many :users, through: :librars
end
