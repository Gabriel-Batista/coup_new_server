class Deck < ApplicationRecord
    belongs_to :card
    belongs_to :match
    has_many :hands
end
