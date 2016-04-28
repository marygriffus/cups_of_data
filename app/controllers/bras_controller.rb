class BrasController < ApplicationController
  load_and_authorize_resource
  skip_authorize_resource :only => [:index, :show]

  def index
    @non_tags = false
    @bras = Bra.all
    @index = true
    @bra_size = BraSize.new
    @tag = Tag.new
  end

  def new
    @bra = Bra.new
  end

  def create
    @bra = Bra.new(bra_params)
    @bra.user = current_user
    if @bra.save
      redirect_to bra_path(@bra)
    else
      render :new
    end
  end

  def show
    @non_tags = false
    @bra = Bra.find(params[:id])
    @bra_sizes = @bra.bra_sizes
    @review = Review.new
    @reviews = @bra.reviews
    @tag = Tag.new
  end

  def edit
    @bra = Bra.find(params[:id])
  end

  def update
    @non_tags = true
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
  params.require(:bra).permit(:brand, :model, :image_url, :style, :all_tags)
end

end
