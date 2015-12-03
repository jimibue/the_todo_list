class ListsController < ApplicationController
  def index
      @lists = List.all
  end

  def show
    @list = List.find(params[:id])
    @item = List.items
  end

  def create
  end

  def new
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def list_params
  end
end
