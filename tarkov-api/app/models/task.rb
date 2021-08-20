class Task < ApplicationRecord
    belongs_to :dealer
    has_many :completed_tasks
    has_many :in_progress_tasks
end
