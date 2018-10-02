class AddGameLogicColumnsToMatch < ActiveRecord::Migration[5.2]
    def change
        add_column :matches, :completed, :boolean, default:false
        add_column :matches, :phase, :string, default: "Declare"
        add_column :matches, :turn_id, :integer
        add_column :matches, :action, :string
        add_column :matches, :targetId, :integer
        add_column :matches, :challengerId, :integer
        add_column :matches, :challengedId, :integer
    end
end
