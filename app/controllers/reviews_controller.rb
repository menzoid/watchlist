class ReviewsController < ApplicationController
  def new
    @list = List.find(params[:list_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @list = List.find(params[:list_id])
    @review.list = @list
    if @review.save
      redirect_to list_path(@list)
    else
      render :new
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy

    # no need for app/views/restaurants/destroy.html.erb
    redirect_to list_path(@review.list)
  end

  private

  def review_params
    params.require(:review).permit(:comment, :rating)
  end
end
