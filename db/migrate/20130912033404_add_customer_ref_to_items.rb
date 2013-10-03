class AddCustomerRefToItems < ActiveRecord::Migration
  def change
    add_reference :items, :customer, index: true
  end
end
