class Post < ApplicationRecord
	validates :title, presence: true, length: { minimum: 1 }
	validates :content, length: { minimum: 100 }
	validates :category, inclusion: { in: %w(Fiction Non-Fiction) }
end
