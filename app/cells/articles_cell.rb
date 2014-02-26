class ArticlesCell < Cell::Rails

  def summary(article)
    @article = article

    render
  end

  def example(article)
    @article = article

    render
  end

end
