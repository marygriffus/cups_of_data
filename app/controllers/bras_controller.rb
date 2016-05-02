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
    # This @non_tags variable is somewhat confusing for me, partially because
    # it's a variable named in the negative ('non_tags'), but also because it's
    # tied into your ability model as an instance variable, which increases the
    # implicit coupling between your controller and views (by that I mean you
    # have to rememeber to set this variable as true or false in every action
    # that renders a view that uses can? :update @bra)

    # Additonally, I'm fairly certain there's a permissions bug here that would
    # allow any user to update a bra they didn't create by injecting values
    # into params for this action. This is a subtle bug, but in short, I'd
    # suggest creating another action just for adding tags, and moving the
    # logic for creating tags into that controller action. I don't often
    # advocate for that, but in this case, you can handle authorization for
    # bra#update and tag#create completely independently. And the
    # tags_controller#create action can be more limited than this update action,
    # which allows updating of any bra attribute due to the un-limited
    # `@bra.update(bra_params)` line below.
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
