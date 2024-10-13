class ArticlesController < ApplicationController
  before_action :set_article, only: %i[show edit update destroy]
  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      respond_to do |format|
        format.html{ redirect_to articles_path, notice: "Article saved successfully!"}
        format.turbo_stream
      end
    else
      render :new, error: :unprocessable_entity
    end
  end

  def show
  end

  def edit
  end

  def update
    if @article.update(article_params)
      respond_to do | format |
        format.html{ redirect_to articles_path, notice: "Article updated successfully"}
        format.turbo_stream
      end
    else
      render :edit, error: :unprocessable_entity
    end
  end

  def destroy
  end

  private

  def set_article
    @article = Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:title, :body)
  end
end
