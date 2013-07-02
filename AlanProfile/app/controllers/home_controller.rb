class HomeController < ApplicationController

def profile
  render_to_string(:action => "profile.html", :layout => false)
end

end
