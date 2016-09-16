class Article < ApplicationRecord
	has_many :comments
	validates :title, uniqueness: true, presence: true,
	length: { minimum: 5}
end
