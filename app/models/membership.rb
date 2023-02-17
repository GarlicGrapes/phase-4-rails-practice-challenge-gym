class Membership < ApplicationRecord
    belongs_to :client
    belongs_to :gym

    validates :gym, presence: true
    validates :client, presence: true
    validates :charge, presence: true
    validate :only_one_per_gym

    def only_one_per_gym
        if :gym_id in self.gym_ids
            errors.add(:gym, "only one membership per gym")
        end
    end
end
