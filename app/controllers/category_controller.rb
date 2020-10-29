class CategoryController < ApplicationController
  def show
    @category = Category.find(params[:id])
    @articles = @category.articles.order(created_at: :desc).includes(:user)
  end
end
