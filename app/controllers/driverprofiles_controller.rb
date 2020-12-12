class DriverprofilesController < ApplicationController
  def new
    @driverprofile = Driverprofile.new
  end

  def create
    @driverprofile = Driverprofile.new(params_driver)
    if @driverprofile.save
      redirect_to 'root_path', notice:'註冊成功'
    else
      redirect_to 'root_path', notice:'註冊失敗'
    end
  end


  private
  def params_driver
    params.require(:driverprofile).permit(:taiwan_id, :license, :car, :account)
  end
end