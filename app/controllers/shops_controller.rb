class ShopsController < ApplicationController
  def index
    @shops = Shop.all
  end

  def new
    @shop = Shop.new
  end

  def create
    @shop = Shop.new(shop_params)
    if @shop.save
      redirect_to @shop, notice: "お店を登録しました。"
    else
      render :new
    end
  end

  def show
    @shop = Shop.find(params[:id])
  end
  
  private

  def shop_params
    params.require(:shop).permit(:name, :description, :phone_number, :address, :homepage, :business_hours, :holiday, :new_image)
  end

end
