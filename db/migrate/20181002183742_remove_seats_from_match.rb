class RemoveSeatsFromMatch < ActiveRecord::Migration[5.2]
    def change
        remove_column :matches, :seats, :integer
    end
end
