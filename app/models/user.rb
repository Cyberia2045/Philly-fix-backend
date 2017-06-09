class User < ApplicationRecord
    has_many :issue_users
    has_many :issues, through: :issue_users

    validates_presence_of :first_name, :last_name, :email, :password
    validates :email, uniqueness: true
end
