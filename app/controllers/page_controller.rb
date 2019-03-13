class PageController < ApplicationController
  
  def index
    @id = session[:id]
  end

end
