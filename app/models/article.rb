class Article < ApplicationRecord
	has_many :comments, dependent: :destroy
	has_many :pictures, dependent: :destroy
	validates :title, uniqueness: true, presence: true,
	length: { minimum: 5}
end
