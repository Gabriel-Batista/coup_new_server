class CreatePlayers < ActiveRecord::Migration[5.2]
    def change
        create_table :players do |t|
            t.integer :match_id
            t.integer :user_id
            t.integer :wallet
            t.timestamps
        end
    end
end
