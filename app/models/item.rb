class Item < ActiveRecord::Base
  belongs_to :user
  validates :name, presence: true
  validates :description, presence:true
  validates :price, presence:true
  validates :shipping, presence:true
  
end
