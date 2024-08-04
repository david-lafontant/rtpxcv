module PublicsHelper
  def published_article(article)
    "/published-artcles/#{article.slug}"
  end

  def dynamic_url(model, field)
    "/published-#{model}/#{field}"
  end
end
