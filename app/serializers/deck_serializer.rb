class DeckSerializer < ActiveModel::Serializer
    attributes :id, :active

    belongs_to :card
end

