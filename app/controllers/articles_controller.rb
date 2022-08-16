class ArticlesController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]

  def index
    @article = Article.all
  end

  private

  def set_article
    @article = Article.find(params[:id])
  end

  def article_params
    params.require(:task).permit(:title, :content)
  end
end
