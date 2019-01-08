class ReviewsController < ApplicationController
  def index
   #render :index   render "index"
   @review = Review.all
  end  
  
  def new
    @review = Review.new
  end
  
  def create
    input = user_input
    @review = Review.create(input)
    redirect_to '/reviews'
    
    # @reviews = Review.new
    # @reviews.title = params[:review][:title]
    # @reviews.ratio = params[:review][:ratio]
    # @reviews.content = params[:review][:content]
    # @reviews.save
    
    # @review = Review.create(params.require(:review).permit(:title, :content))
  end      
  
  def show
    @review = Review.find(params[:id])
  end  
  
  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    
    redirect_to '/reviews'
  end
  
  def edit
    @review = Review.find(params[:id])
  end
  
  def update
    @review = Review.find(params[:id])
    # @review.update(params.require(:review).permit(:title, :ration, :content))
    @review.update(user_input)
   
    # @review = Review.find(params[:id])
    
    # @review.title = params[:review][:title]
    # @review.ratio = params[:review][:ratio]
    # @review.content = params[:review][:content]
    # # @review.save
    
    redirect_to '/reviews'
  end  
  
  private
  
  def user_input
    # return params.require(:review).permit(:title, :ration, :content)
    params.require(:review).permit(:title, :ration, :content)
  end 
  
end