class Article < ApplicationRecord
    validates :title, presence: true
    validates :body, presence: true
    validates :image, presence: true
    belongs_to :user, class_name: 'User'

    has_one_attached :image
end
