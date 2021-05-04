class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list
  validates :content, presence: true, length: {minimum: 6}
end
