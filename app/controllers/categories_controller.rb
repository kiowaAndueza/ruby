class CategoriesController < ApplicationController
  @root_url = "/categories/index"
  layout 'application'
  add_flash_types :notice

  def index
    @categories = Category.all()
  end

  def show
    @categories = Category.find(params[:id])
  end

  def new
    @categories = Category.new
  end

  def create
    @categories = Category.create(params_categories)
    if @categories.save
      redirect_to categories_index_path
    else
      render 'new'
    end
  end

  def edit
    @categories = Category.find(params[:id])
  end

  def update
    @categories = Category.find(params[:id])
    if @categories.update(params_categories)
      redirect_to categories_index_path
    else
      render 'edit'
    end
  end

  def delete
    @categories = Category.find(params[:id])
    @categories.destroy
    redirect_to categories_index_path
  end

  def params_categories
    params.require(:category).permit(:title, :img, :url)
  end
end
