class ArticlesController < ApplicationController
  
  def index
    @articles = Article.all
  end

  # Article/Show 
  def show
    @article = Article.find(params[:id])
  end
 
  # Article/Create
  def new
    @article = Article.new
  end
 
  def create
    @article = Article.new(article_params)

    if @article.save
      redirect_to @article
    else 
      render :new
    end
  end

  private 

  def article_params
    params.require(:article).permit(:title, :body)
  end

end
