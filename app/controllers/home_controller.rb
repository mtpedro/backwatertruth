class HomeController < ApplicationController
  before_action :authenticate_user!, except: [:about, :_header ]

  def _header
  end

  def about
  end

  def profile
    @username = current_user.name
    @posts = current_user.posts
    @postcount = @posts.length();
  end
end
