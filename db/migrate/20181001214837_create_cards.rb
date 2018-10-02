class CreateCards < ActiveRecord::Migration[5.2]
    def change
        create_table :cards do |t|
            t.string :name
            t.string :ability
            t.string :block
            t.string :desc
            t.timestamps
        end
    end
end
