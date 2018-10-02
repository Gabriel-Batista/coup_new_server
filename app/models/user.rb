class User < ApplicationRecord
    has_many :players
    has_many :matches, through: :players

    validates :username, uniqueness: true
end
