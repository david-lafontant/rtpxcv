class PublicsController < ApplicationController
  def home; end

  def articles
    @articles = Article.all.where(published: true)
  end

  def show_article
    @article = Article.find(params[:id])
  end

  def emissions
    @emissions = Emission.all
  end

  def show_emission
    @emission = Emission.find(params[:id])
  end

  def about; end

  def contact; end
end
