class CategoriesController < ApplicationController

  def index
    @categories = Category.all
    @tags = Tag.all
  end

  def show
    if @category = Category.find(params[:id])
      @tags = @category.tags
    end
  end

end
