class CardSerializer < ActiveModel::Serializer
    attributes :id, :name, :ability, :block, :desc
end
