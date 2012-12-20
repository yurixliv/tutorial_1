class Product < ActiveRecord::Base
  attr_accessible :description, :image_url, :price, :title
  validates :title, :image_url, :description, presence: true
  validates :title, uniqueness: true
  validates :price, numericality: {greater_than_or_equal_to: 0.01}
  validates :image_url, allow_blank: true, format: { 
  	with: %r{\.(gif|jpg|png)$}i, 
  	message: 'deve ser uma URL para uma imagem GIF, JPG ou PNG'
  }

end
