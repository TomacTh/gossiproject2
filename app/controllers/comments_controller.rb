class CommentsController < ApplicationController
<<<<<<< HEAD
  def create
  @gossip = Gossip.find(params[:gossip_id])
  @comment = @gossip.comments.create(params[:comment].permit(:anonymous_commentor, :content))
  redirect_to gossip_path(@gossip)
end
=======

  def new
  end

  def create
    @comment = Comment.new(comment_params)
    @comment.gossip_id = params[:gossip_id]
    @comment.save
    redirect_to gossip_path(@comment.gossip)
  end

  def edit
    @comment = Comment.find(params[:id])
    @gossip = Gossip.find(params[:id])
  end

  def update
    @comment = Comment.find(params[:id])
    @comment.update(comment_params)
    redirect_to gossip_path(@comment.gossip)
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.delete
    redirect_to gossips_path(@comment.gossip)
  end

  def comment_params
    params.require(:comment).permit(:anonymous_commentor, :content)
  end
>>>>>>> 6b28e9f3d1ae41a2f5d092f49dba7f416a17d98d

end
