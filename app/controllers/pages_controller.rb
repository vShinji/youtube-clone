class PagesController < ApplicationController
  def uploads
    if user_signed_in?
      @posts = current_user.posts
      if @posts.empty?
        @message = "You need to post something!"
      else
        @message = "Your videos:"
      end
    end
  end
end
