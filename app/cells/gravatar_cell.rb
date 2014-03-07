class GravatarCell < Cell::Rails

  def image(args)
    @url = "http://www.gravatar.com/avatar/#{args[:md5]}"
    render
  end

end
