class ArticlesController < ApplicationController

  before_filter :basic_auth, only: [:new]
  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def create
    Article.create(article_params)
    redirect_to '/'
  end

  def show
    @article = Article.find(params[:id])
  end

  private
  def article_params
    params.require(:article).permit(:title, :content)
  end

  def basic_auth
    authenticate_or_request_with_http_basic do |user,pass|
      user == ENV["BASIC_AUTH_USER"] && ENV["BASIC_AUTH_PASSWORD"]
    end
  end
end
