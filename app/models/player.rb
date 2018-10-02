class Player < ApplicationRecord
    belongs_to :match
    belongs_to :user
    has_many :hands

    before_destroy :destroy_associations

    private

    def destroy_associations
        self.hands.destroy_all
    end
end
