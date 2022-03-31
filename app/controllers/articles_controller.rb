class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end
  ########## SHOW/READ ##############
  def show
    @article = Article.find(params[:id])
  end
  ########## NEW/CREATE ##############
  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)

    if @article.save
      redirect_to @article
    else
      render :new, status: :unprocessable_entity
    end
  end
  ########## EDIT/UPDATE ##############
  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])

    if @article.update(article_params)
      redirect_to @article
    else
      render :new, status: :unprocessable_entity
    end
  end
    ########## DESTROY/DELETE ##############

  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    redirect_to root_path, status: :see_other
  end
  # Creation of strong parameters to be hashed and used by
  # create action above
  private
    def article_params
      params.require(:article).permit(:title, :body)
    end
end
