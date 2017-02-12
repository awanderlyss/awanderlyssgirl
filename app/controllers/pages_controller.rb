class PagesController < ApplicationController

  def show
    # render a page template that is the same name as a parameter that is passed in
    render template: "pages/#{params[:page]}"
  end
end
