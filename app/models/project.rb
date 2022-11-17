class Project < ApplicationRecord
    enum :status, [ :open, :closed ]
    validates :title, :description, presence: true
    has_one_attached :image
    has_many :bugs, dependent: :destroy
end
