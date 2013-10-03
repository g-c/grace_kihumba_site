class ItemsController < ApplicationController
  before_filter :authenticate_customer!, :except => [:show,:index]
  
  def index
    @items= Item.find(:all)
  end

  def show
    @item=Item.find(params[:id])

  end

  def new
    @item=Item.new
  end

  def create
    
       # @item=Item.new(params[:items])
       # @item.customer_id=current_customer.id
        @customer=current_customer        
        @item=@customer.items.build(item_params)
        #@item.customer_id=current_customer.id
        #@item.name="name"
        #@item.description="descr"
        #@item.price=3
        #@item.shipping="us"
   
        if @item.save
          flash[:notice] = "Succesfully listed item."
          redirect_to @item
        else
         flash[:notice] = "Item not saved"
          #flash[:notice] = @item.customer_id
          
        render 'new'
        end
  end
  
  private
  def item_params
      params.require(:item).permit(:name, :description, :price, :shipping, :customer_id)
    end


  def edit
    @item=Item.find(params[:id])
  end

  def update
  end

  def destroy
  end
end
