class Issue < ApplicationRecord
    has_many :issue_users
    has_many :issue_dispatchers

    has_many :users, through: :issue_users
    has_many :dispatchers, through: :issue_dispatchers
<<<<<<< HEAD
=======

    validates_presence_of :neighborhood, :description
>>>>>>> fe8d0e5bff109c5900ed9e380bf19dbe37635fba
end
