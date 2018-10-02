class ChangeTurnIdNamingSchemeInMatches < ActiveRecord::Migration[5.2]
    def change
        remove_column :matches, :turn_id, :integer
        add_column :matches, :turnId, :integer
    end
end
