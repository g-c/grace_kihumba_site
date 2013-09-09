class ItemsController < ApplicationController
  def index
  end

  def show
    @item=Item.find(params[:id])

  end

  def new
    @item=Item.new
  end

  def create
    #@user=User.find(1)
    #@item=@user.items.build(item_params)
    @item = Item.new(item_params)
        if @item.save
          redirect_to @item
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
end
