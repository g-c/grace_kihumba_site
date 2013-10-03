class UsersController < ApplicationController
  def index
  end

  def show
    #@customer=Customer.find(params[:id])
    #@user=User.find(params[:id])
    @customer=Customer.find(current_customer.id)
    #@items=Item.find(:all,:conditions => ['customer_id=?', @customer.id])
    @items=@customer.items.find_all_by_customer_id(current_customer.id)
    
  end

  def new
    @user=User.new
  end

  def create
    @user = User.new(user_params)
        if @user.save
          redirect_to @user
        else
          render 'new'
        end
  end

  def edit
  end

  def update
  end

  def destroy
  end
  
  private

      
end
