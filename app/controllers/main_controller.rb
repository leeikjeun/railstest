class MainController < ApplicationController
  layout "application"
  
  def index
  end

  def p_search
  end

  def r_search
  end

  def r_detail
    @detailInfo = RestaulantInfo.find(params[:id]);
    @menus = Menu.where("key = %d" % [params[:id]]);
  end

  def recive_p_data
    min_price = Integer(params[:minPrice])
    max_price = Integer(params[:maxPrice])
    product = "'%" + params[:productName] + "%'"

    @sendDatas = ProductInfo.where("name like %s and price between %d and %d" % [product,min_price,max_price])
    respond_to do |format|
      format.html
      format.json {render json: @sendDatas}
    end
  end

  def recive_r_data
    min_price = Integer(params[:minPrice])
    max_price = Integer(params[:maxPrice])
    location = "'%" + params[:location] + "%'"

    # @sendDatas = ActiveRecord::Base.connection.execute("select * from restaulant_infos where location like %s and between_price_min >= %d and between_price_max <= %d" % [location ,min_price,max_price])
    @sendDatas = RestaulantInfo.where("location like %s and between_price_min >= %d and between_price_max <= %d" % [location ,min_price,max_price])
    respond_to do |format|
      format.html {redirect_to @sendDatas}
      format.json {render json: @sendDatas}
    end

  end

end
