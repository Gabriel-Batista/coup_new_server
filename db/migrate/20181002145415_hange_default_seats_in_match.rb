class HangeDefaultSeatsInMatch < ActiveRecord::Migration[5.2]
    def change
        change_column :matches, :seats, :integer, default: 1
    end
end
