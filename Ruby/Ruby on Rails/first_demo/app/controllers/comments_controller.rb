class CommentsController < ApplicationController
  before_action :set_post

  def create
    # Takes the parameters from the form
      comment = @post.comments.create! params.required(:comment).permit(:content)
      # Deliver later dispatches the mail delivery from html loading
      # which results in much faster UI
      CommentsMailer.submitted(comment).deliver_later
      redirect_to @post
  end

  private
    def set_post
      # gets the post id from the URL
      @post = Post.find(params[:post_id])
      end


end
