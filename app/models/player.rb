class Player < ApplicationRecord
    belongs_to :match
    belongs_to :users
    has_many :hands
end
