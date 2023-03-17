class Member < ApplicationRecord
    has_many :attendances, dependent: :destroy
end
