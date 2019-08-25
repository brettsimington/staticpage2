class AvengersController < ApplicationController

  def index
  @avengers = Avenger.first
  end

  def index
    @avenger = Avenger.all.sample
  end

  def create
    @avenger = Avenger.create(avenger_params)
    if @avenger.invalid?
      flash[:error] = '<strong>Could not save</strong> the data you entered is invalid... Thanos is pleased...'
  end
  redirect_to root_path
end

  private

  def avenger_params
    params.require(:avenger).permit(:avenger)
  end

end
