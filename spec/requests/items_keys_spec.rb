require 'spec_helper'
require 'factory_girl'

FactoryGirl.define do
  factory :customer do
    email "a.b@c.com"
    
end

describe "ItemsKeys" do
  describe "GET /items_keys" do
    let(:customer) {FactoryGirl.create(:customer)}
    before {@item= customer.items.build(name: "item a",description: "item a", price: 45, shipping: "USA")}
    
    subject {@item}
    
    it {should respond_to(:name)}
    it {should respond_to(:customer_id)}
    it {should respond_to(:customer)}
    its(:customer) { should eq customer}
    
    it {should be_valid}
    describe "when customer_id is not present" do
      before {@item.customer_id=nil}
      it{should_not be_valid}
      
    end
    # it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      # get items_keys_path
 #      response.status.should be(200)
    end
  end
end
