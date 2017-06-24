class Order < ApplicationRecord
	belongs_to :product
	belongs_to :user
	validates :first_name, presence: true
	# validates :last_name, presence: true
	# validates :phone, numericality: true
 #    VARID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i #メールアドレスフォーマットの検証
	# validates :email, format: { with: VARID_EMAIL_REGEX }
	# validates :address1, presence: true
	# validates :address2, presence: true
end
