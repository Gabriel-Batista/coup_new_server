class Match < ApplicationRecord
    has_many :players
    has_many :decks
    has_many :users, through: :players
    has_many :cards, through: :decks

    after_create :initialize_match
    before_destroy :destroy_associations

    private

    def initialize_match
        3.times do
            self.decks.create(match_id: self.id, card_id: 1)
            self.decks.create(match_id: self.id, card_id: 2)
            self.decks.create(match_id: self.id, card_id: 3)
            self.decks.create(match_id: self.id, card_id: 4)
            self.decks.create(match_id: self.id, card_id: 5)
        end
    end

    def destroy_associations
        self.users.each {|user| user.update in_match:false}
        self.cards.destroy_all
        self.players.destroy_all
        self.decks.destroy
    end
end
