class CreateDecks < ActiveRecord::Migration[5.2]
    def change
        create_table :decks do |t|
            t.integer :match_id
            t.integer :card_id
            t.timestamps
        end
    end
end
