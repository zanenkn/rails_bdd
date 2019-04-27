class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(params.require(:article).permit(:title, :content))

    if @article.save
      redirect_to @article, notice: "Article was successfully created."
    else
      render :new
    end
    
  end

  def show
    @article = Article.find(params[:id])
  end

end
