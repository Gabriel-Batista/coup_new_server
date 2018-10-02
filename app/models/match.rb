class Match < ApplicationRecord
    has_many :players
    has_many :decks
    has_many :users, through: :players
    has_many :cards, through: :decks

    after_create :initialize_match

    private

    def initialize_match
        self.cards.create(name: "Captain", ability: "Steal", block: "Steal", desc: "Choose a player, then steal 2 coins from them")
        self.cards.create(name: "Duke", ability: "Steal", block: "Steal", desc: "Choose a player, then steal 2 coins from them")
        self.cards.create(name: "Contessa", ability: "Steal", block: "Steal", desc: "Choose a player, then steal 2 coins from them")
        self.cards.create(name: "Assassin", ability: "Steal", block: "Steal", desc: "Choose a player, then steal 2 coins from them")
        self.cards.create(name: "Ambassador", ability: "Steal", block: "Steal", desc: "Choose a player, then steal 2 coins from them")
    end
end
