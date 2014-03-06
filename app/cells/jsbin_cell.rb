class JsbinCell < Cell::Rails

  def html(jsbin_url)
    @jsbin_url = jsbin_url
    render
  end

end
