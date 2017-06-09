class IssueDispatcher < ApplicationRecord
    belongs_to :dispatcher
    belongs_to :issue
end
