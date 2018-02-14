class Todo < ApplicationRecord
    has_many :comments, dependent: :destroy
    validates :description, presence: true,
        length: { minimum: 2 }
end
