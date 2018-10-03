class Player < ApplicationRecord
    belongs_to :match
    belongs_to :user
    has_many :hands

    after_create :deal
    before_destroy :destroy_associations

    private

    def deal
        2.times do
            @deck_draw = self.match.decks.where("active = true").sample
            @deck_draw.update(active: false)
            @new_hand = self.hands.create(deck_id: @deck_draw.id, active: true)
        end
    end

    def destroy_associations
        self.hands.destroy_all
    end
end
