class Gym < ApplicationRecord
    has_many :memberships, dependent: :destroy
end
