class AdminController < ApplicationController

  def new
    @restaulantInfo = RestaulantInfo.new
  end

  def create
    @restaulantInfo = RestaulantInfo.new(restaulantInfo_params)
    @restaulantInfo.save
  end

  def index
    @restaulantInfo = RestaulantInfo.all
  end

  def destroy
    @restaulantInfos = RestaulantInfo.find(params[:id])
    @restaulantInfos.destroy
  end

  def addMenu
    @key = params[:id]
    @menu = Menu.new
  end

  def menuCreate
    @menu = Menu.new(params.require(:menu).permit(:name, :price, :key))
    @menu.save
  end

  def showmenu
    key = params[:id]
    @menus = Menu.where(key: key)
  end

  def newProduct
    @productInfo = ProductInfo.new
  end

  def createProduct
    @productInfo = ProductInfo.new(productInfo_params)
    @productInfo.save
  end

  def productlist
    @productInfo = ProductInfo.all
  end

  private
    def restaulantInfo_params
    params.require(:restaulant_info).permit(:name, :img, :location, :address, :phone, :business_hours, :between_price_min, :between_price_max)
  end

  private
    def productInfo_params
    params.require(:product_info).permit(:name, :img, :price, :rogoCU, :rogoGS, :rogoSeven)
  end

end
