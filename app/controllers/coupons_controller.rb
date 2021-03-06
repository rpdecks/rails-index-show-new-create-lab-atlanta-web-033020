class CouponsController < ApplicationController


  def index
    @coupons = Coupon.all
  end

  def create
    @coupon = Coupon.create(coupon_params)
    redirect_to coupon_path(@coupon)
  end

  def show
    @coupon = Coupon.find_by(id: params[:id])
  end

  def new
  end

  private

  def coupon_params
    params.require(:coupon).permit(:store,:coupon_code)
  end
end
