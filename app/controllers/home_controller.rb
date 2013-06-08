class HomeController < ApplicationController
  before_filter :authenticate_user!

  def index
    @posts = Post.all
    @technologies = Technology.all
    @user = User.all
  end
end
