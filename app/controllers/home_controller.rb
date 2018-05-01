class HomeController < ApplicationController
  def index
    if params[:path].present?
      redirect_to "/#{params[:path].split('/').last}"
    end
  end
end