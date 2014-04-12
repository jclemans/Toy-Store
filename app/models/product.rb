class Product < ActiveRecord::Base
  validates :name, :presence => true
  validates :price, :presence => true
  validates :description, :presence => true
  validates :name, :uniqueness => true
  validates :price, :numericality => true
end
