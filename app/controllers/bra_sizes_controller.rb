class BraSizesController < ApplicationController
  load_and_authorize_resource


  def new
    @bra = Bra.find(params[:bra_id])
    @bra_size = BraSize.new
  end

  def create
    @bra = Bra.find(params[:bra_id])
    @bra_size = BraSize.new(bra_size_params)
    @bra_size.bra = @bra
    @bra_size.user = current_user
    if @bra_size.save
      redirect_to bra_path(@bra)
    else
      render :new
    end
  end

  def edit
    @bra = Bra.find(params[:bra_id])
    @bra_size = BraSize.find(params[:id])
  end

  def update
    @bra = Bra.find(params[:bra_id])
    @bra_size = BraSize.find(params[:id])
    # Since you have validations on this model, it's a good idea to handle
    # possible failures in updating somehow.
    @bra_size.update(bra_size_params)
    redirect_to bra_path(@bra)
  end

  def destroy
    @bra = Bra.find(params[:bra_id])
    @bra_size = BraSize.find(params[:id])
    @bra_size.destroy
    redirect_to bra_path(@bra)
  end

  private
  def bra_size_params
    params.require(:bra_size).permit(:band_length, :stretched_band, :cup_width, :cup_depth, :cup_separation, :gore_height, :num_hooks, :rating_aesthetic, :rating_comfort, :rating_quality)

    # minor style point, but it's good to keep lines from exceeding 80 chars
    # in width... you can break arguments into multiple lines in most
    # programming languages like so:

    # params.require(:bra_size).permit( :band_length, :stretched_band, :cup_width,
    #                                   :cup_depth, :cup_separation, :gore_height,
    #                                   :num_hooks, :rating_aesthetic, :rating_comfort,
    #                                   :rating_quality)
  end

end
