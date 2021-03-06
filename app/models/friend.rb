class Friend < ApplicationRecord
    before_save {self.email = email.downcase}
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :first_name, presence: true, length: { maximum:50 }
    validates :last_name, presence: true, length: {maximum: 50}
    validates :email, presence: true, length: {maximum: 255}, format: { with: VALID_EMAIL_REGEX }, uniqueness: true
    validates :phone, presence: true, length: {maximum: 30}
    validates :twitter, presence: false
end
