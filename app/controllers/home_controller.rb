class HomeController < ApplicationController
  def index
    @articles = Article.all
  end

  def about

  end

  def contact

  end

  def post

  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(set_article_params)
    if @article.save
      redirect_to root_path
    else
      render :new
    end
  end


  def set_article_params
    params.require(:article).permit(:title, :body)
  end

end
