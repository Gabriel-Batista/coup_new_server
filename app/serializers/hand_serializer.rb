class HandSerializer < ActiveModel::Serializer
    attributes :id, :active, :deck_id
    belongs_to :deck
    
end
