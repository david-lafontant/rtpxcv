module PublicsHelper
  def dynamic_url(resources, field)
    "/published-#{resources}/#{field}"
  end
end
