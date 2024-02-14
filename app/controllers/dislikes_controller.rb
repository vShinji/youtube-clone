class DislikesController < ApplicationController
  def create
    @dislike = current_user.dislikes.new(dislike_params)
    if !@dislike.save
      flash[:alert] = "You really hate this right?"
    end
    redirect_back(fallback_location: root_path)
  end

  def destroy
    @dislike = current_user.dislikes.find(params[:id])
    @dislike.destroy
  end

  private

  def dislike_params
    params.require(:dislike).permit(:post_id)
  end
end
