class MatchSerializer < ActiveModel::Serializer
    attributes :id, :seats, :phase, :turnId, :action, :targetId, :challengerId, :challengedId, :completed
    has_many :players
end
