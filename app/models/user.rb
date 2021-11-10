class User < ApplicationRecord
    validates :name, presence: true
    validates :age, presence: true
    has_many :librars
    has_many :books, through: :librars
end
