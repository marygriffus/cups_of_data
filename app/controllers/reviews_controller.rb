class ReviewsController < ApplicationController

  def new
    @bra = Bra.find(params[:bra_id])
    @review = Review.new
  end

  def create
    @bra = Bra.find(params[:bra_id])
    @review = Review.new(review_params)
    @review.bra = @bra
    @review.save
    redirect_to bra_path(@bra)
  end

  def edit
    @bra = Bra.find(params[:bra_id])
    @review = Review.find(params[:id])
  end

  def update
    @bra = Bra.find(params[:bra_id])
    @review = Review.find(params[:id])
    @review.update(review_params)
    redirect_to bra_path(@bra)
  end

  def destroy
    @bra = Bra.find(params[:bra_id])
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to bra_path(@bra)
  end

  private
  def review_params
    params.require(:review).permit(:author, :body)
  end

end