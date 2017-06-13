class Issue < ApplicationRecord
    has_many :issue_users
    has_many :issue_dispatchers

    has_many :users, through: :issue_users
    has_many :dispatchers, through: :issue_dispatchers

    validates_presence_of :neighborhood, :description

    has_attached_file :image
    validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

    # has_attached_file :avatar, :styles =>
    # { :medium => "300x300>", :thumb => "100x100>" },
    # :default_url => "/images/:style/missing.png"
    # validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
end
