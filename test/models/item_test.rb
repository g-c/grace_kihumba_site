require 'test_helper'

class ItemTest < ActiveSupport::TestCase
  test "should not save item without description" do
  item=Item.new
  assert !item.save, "Saved item without description"
end
  
  
end
