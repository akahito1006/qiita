class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end
  
  def new
    @article = Article.new
  end
  
  def create
    @article = Article.new(article_params)
    @article.save
    redirect_to root_path
  end
  
  private
  def article_params
    params.require(:article).permit(:title, article_images_images: [])
  end
end
