class Card < ApplicationRecord
    has_many :decks
    has_many :hands, through: :decks
    has_many :matches, through: :decks
end
