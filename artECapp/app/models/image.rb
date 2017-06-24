class Image < ApplicationRecord
  belongs_to :product
  attachment :image
end
