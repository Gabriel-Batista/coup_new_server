class MatchSerializer < ActiveModel::Serializer
    attributes :id, :seats, :phase, :turn_id, :action, :target_id, :challenger_id, :challenged_id
    has_many :players
    has_many :cards
end
