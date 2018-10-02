class ChangeDefaultForPhase < ActiveRecord::Migration[5.2]
    def change
        change_column :matches, :phase, :string, default: "take action"
    end
end
