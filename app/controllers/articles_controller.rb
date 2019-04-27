class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def new
  end

  def create
    @article = Article.new(params.require(:article).permit(:title, :content))
    
    @article.save
    redirect_to @article, notice: "Article was successfully created."
  end

  def show
    @article = Article.find(params[:id])
  end

end
