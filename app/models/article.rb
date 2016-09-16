class Article < ApplicationRecord
	validates :title, uniqueness: true, presence: true,
	length: { minimum: 5}
end
