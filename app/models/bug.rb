class Bug < ApplicationRecord
    enum :status, [:created, :assigned, :resolved]
    belongs_to :project
end
