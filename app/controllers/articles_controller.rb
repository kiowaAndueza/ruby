class ArticlesController < ApplicationController
  @root_url = "/articles/index"
  layout 'application'
  add_flash_types :notice

  def index
    @articles = Article.all()
  end

  def show
    @articles = Article.find(params[:id])
  end

  def new
    @articles = Article.new
  end

  def create
    @articles = Article.create(params_articles)
    if @articles.save
      redirect_to article_index_path
    else
      render 'new'
    end
  end

  def edit
    @articles = Article.find(params[:id])
  end

  def update
    @articles = Article.find(params[:id])
    if @articles.update(params_articles)
      redirect_to article_index_path
    else
      render 'edit'
    end
  end

  def delete
    @articles = Article.find(params[:id])
    @articles.destroy
    redirect_to article_index_path
  end

  def params_articles
    params.require(:article).permit(:title, :img, :url,:island,:exturl,:info,:category_id)
  end

end
