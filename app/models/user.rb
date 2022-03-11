class User < ApplicationRecord
    has_many :posts
    
    validates :first_name, presence: true, 
                            length: { minimum: 3, maximum: 20 }
    validates :last_name, presence: true,
                            length: { minimum: 3, maximum: 20 }
    validates :user_name, presence: true, 
                            length: { minimum: 3, maximum: 20 }, 
                            uniqueness: { case_sensitive: false }
    validates :display_name, presence: true, 
                            length: { minimum: 6, maximum: 20 }
    validates :major, presence: true
    validates :tutor_major, presence: true
    
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, 
                            uniqueness: { case_sensitive: false },
                            format: { with: VALID_EMAIL_REGEX }
    validates :password, presence: true,
                            length: { minimum: 6, maximum: 20 }
end