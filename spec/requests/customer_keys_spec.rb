require 'spec_helper'



  describe Customer do
    before do
      @customer =Customer.new(email: "a.b@c.com")
    end
    
    subject {@customer}
    
    it {should respond_to(:email)}
    it {should respond_to(:items)}
  
   
    
end
