class User < ApplicationRecord
    validates :first_name, presence: true, length: { minimum: 6, maximum: 20 }
    validates :last_name, presence: true, length: { minimum: 6, maximum: 20 }
    validates :user_name, presence: true, length: { minimum: 6, maximum: 20 }
    validates :display_name, presence: true, length: { minimum: 6, maximum: 20 }
    validates :major, presence: true
    validates :tutor_major, presence: true
end