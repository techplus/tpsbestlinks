class HomeController < ApplicationController
  before_filter :authenticate_user!

  def index
   @posts = Post.all
    @posts = Post.order('created_at desc').limit(5)

    @technologies = Technology.all
    @user = User.all
  end
end
