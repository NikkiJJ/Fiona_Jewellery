class JewelleryItemsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @jewellery_items = JewelleryItem.all
  end
end
