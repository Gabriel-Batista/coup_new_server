class AddDefaultToWallet < ActiveRecord::Migration[5.2]
    def change
        change_column :players, :wallet, :integer, default: 2
    end
end
