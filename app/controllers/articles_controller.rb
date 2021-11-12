class ArticlesController < ApplicationController
  
  def index
    @articles = Article.all
  end

  # Article/Show 
  def show
    @article = Article.find(params[:id])
  end
 

end
