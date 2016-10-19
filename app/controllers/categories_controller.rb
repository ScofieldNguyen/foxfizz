class CategoriesController < ApplicationController
  before_action :set_category, only: [:show]
  def show
    @posts = @category.posts.near(location_address, 50)
    @categories = Category.all
  end

  private

  def set_category
    @category = Category.find(params[:id])
  end
end
