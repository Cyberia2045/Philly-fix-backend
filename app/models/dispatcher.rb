class Dispatcher < ApplicationRecord
    has_many :issue_dispatchers
    has_many :issues, through :issue_dispatchers

    validates_presence_of :first_name, :last_name, :email, :password, :department
end
