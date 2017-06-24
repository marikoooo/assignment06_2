class Admin < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, 
         # :confirmable, 
         # :registerable, 
         :recoverable, :rememberable, :trackable, :validatable
  has_many :products
  has_many :categories
end
