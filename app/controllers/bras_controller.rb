class BrasController < ApplicationController

  def index
    @bras = Bra.all
    @index = true
    @bra_size = BraSize.new
  end

  def new
    @bra = Bra.new
  end

  def create
    @bra = Bra.create!(bra_params)
    redirect_to bra_path(@bra)
  end

  def show
    @bra = Bra.find(params[:id])
    @bra_sizes = @bra.bra_sizes
  end

  def edit
    @bra = Bra.find(params[:id])
  end

  def update
    @bra = Bra.find(params[:id])
    @bra.update(bra_params)
    redirect_to bra_path(@bra)
  end

  def destroy
    @bra = Bra.find(params[:id])
    @bra.destroy
    redirect_to bras_path
  end


private
def bra_params
  params.require(:bra).permit(:brand, :model, :image_url, :style)
end

end
