class CommentsController < ApplicationController
  before_action :set_post

  def create
    # Takes the parameters from the form
      @post.comments.create! params.required(:comment).permit(:content)
      redirect_to @post
  end

  private
    def set_post
      # gets the post id from the URL
      @post = Post.find(params[:post_id])
      end


end
