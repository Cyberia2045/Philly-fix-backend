class Issue < ApplicationRecord
    has_many :issue_users
    has_many :issue_dispatchers

    has_many :users, through :issue_users
    has_many :dispatchers, through :issue_dispatchers

    validates_presence_of :neighborhood, :description
end
