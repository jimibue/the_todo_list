class ItemsController < ApplicationController
  # def index
  # end

  def show
    @item = Item.find(params[:id])

    @items_list = List.find(params[:list_id])
  end

  def new
    @item = Item.new

    @items_list = List.find(params[:list_id])
  end


  def create
    @item = Item.new(item_params)
    if @item.save
       redirect_to list_path(@item.list_id)
    else
      render :new
    end
  end


  def edit

    @item = Item.find(params[:id])

  end

  def update

    @item = Item.find(params[:id])
    id = @item.list_id

    if @item.update(item_params)
      redirect_to list_path(@item.list_id)

    else
      render :edit
    end
  end

  def destroy
    @item = Item.find(params[:id])

    @item.destroy
    redirect_to list_path(@item.list_id)
  end

  private
  def item_params
    params.require(:item).permit(:name,:description,:priority,:list_id, :completed)
  end
end
