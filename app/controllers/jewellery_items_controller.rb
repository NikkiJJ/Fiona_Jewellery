class JewelleryItemsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @jewellery_items = JewelleryItem.all
  end

  def show
    @jewellery_item = JewelleryItem.find(params[:id])
  end

  def new
    @jewellery_item = JewelleryItem.new
  end

  def create
    @jewellery_item = JewelleryItem.new(jewellery_item_params)
    @jewellery_item.user = User.first  # Just for testing, replace with actual user from session later
    if @jewellery_item.save
      redirect_to jewellery_item_path(@jewellery_item)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @jewellery_item = JewelleryItem.find(params[:id])
  end

  def update
    @jewellery_item = JewelleryItem.find(params[:id])
    @jewellery_item.update(jewellery_item_params)
    redirect_to jewellery_item_path(@jewellery_item)
  end

  private

  def jewellery_item_params
    params.require(:jewellery_item).permit(:name, :description, :price, :jewellery_type, :user_id)
  end
end
