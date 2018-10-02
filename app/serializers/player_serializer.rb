class PlayerSerializer < ActiveModel::Serializer
  attributes :id, :wallet
  belongs_to :user
  has_many :hands
end
