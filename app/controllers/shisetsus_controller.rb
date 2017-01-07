class ShisetsusController < ApplicationController
  def index
    @shisetsus = Shisetsu.all
    render json: @shisetsus
  end

  def show
    @shisetsu = Shisetsu.find params[:id]
    render json: @shisetsu
  end
end
