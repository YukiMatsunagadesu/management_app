class Member < ApplicationRecord
    has_many :attendances, dependent: :destroy
    validates :name, :mail,:phone,:password,:member_type, presence: true
    validates :password, uniqueness: true
end
