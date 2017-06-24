class Product < ApplicationRecord
	has_many :images
	accepts_attachments_for :images, attachment: :image
	belongs_to :admin
	belongs_to :category
	has_many :orders
end
