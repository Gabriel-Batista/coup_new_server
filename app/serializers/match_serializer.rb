class MatchSerializer < ActiveModel::Serializer
    attributes :id, :seats
    has_many :users
end
