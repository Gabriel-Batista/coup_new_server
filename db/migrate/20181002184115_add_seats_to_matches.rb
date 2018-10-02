class AddSeatsToMatches < ActiveRecord::Migration[5.2]
    def change
        add_column :matches, :seats, :integer, default: 1
    end
end
