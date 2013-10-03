require 'test_helper'

class CustomerTest < ActiveSupport::TestCase
  
  test "should not save customer without email" do
  customer=Customer.new
  assert !customer.save, "Saved customer without email"
end
end
