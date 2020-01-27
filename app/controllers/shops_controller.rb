class ShopsController < ApplicationController
  before_action :set_shop, only: [:show, :edit, :update, :destroy]
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
  end

  def edit
  end

  def update
    if @shop.update(shop_params)
      redirect_to @shop, notice: "お店を更新しました。"
    else
      render :edit
    end
  end

  def destroy
    @shop.destroy
    redirect_to shops_path, notice: "お店を削除しました。"
  end

  
  private

  def shop_params
    params.require(:shop).permit(:name, :description, :phone_number, :address, :homepage, :business_hours, :holiday, :new_image, :category_id)
  end

  def set_shop
    @shop = Shop.find(params[:id])
  end

end
