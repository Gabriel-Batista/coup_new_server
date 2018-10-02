class AddActiveToHand < ActiveRecord::Migration[5.2]
    def change
        add_column :hands, :active, :boolean
    end
end
