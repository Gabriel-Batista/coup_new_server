class MatchSerializer < ActiveModel::Serializer
    attributes :id, :seats
    has_many :players
    has_many :cards
end
