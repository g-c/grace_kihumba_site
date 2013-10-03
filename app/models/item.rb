class Item < ActiveRecord::Base
  belongs_to :customer
  validates :name, presence: true
  validates :description, presence:true
  validates :price, presence:true
  validates :shipping, presence:true
  
end
