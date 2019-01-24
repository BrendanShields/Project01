class RepliesController < ApplicationController

  before_action :find_commentable
  before_action :authenticate_user!, only: [:edit, :reply, :update, :destroy, :like, :unlike]
  impressionist actions: [:show], unique: ['impressionable_type', 'impressionable_id', 'session_hash']
      def new
        @reply = Reply.new
      end

      def create
        @reply = @commentable.replies.new reply_params

        if @reply.save
          current_user.replies << @reply
          redirect_back :fallback_location => root_path, notice: 'Your comment was successfully posted!'
        else
          redirect_back :fallback_location => root_path, notice:  "Your comment wasn't posted!"
        end
      end

      def destroy
        @post = Post.find(params[:post_id])
        @reply = @post.replies.find(params[:id])
        @reply.destroy
        respond_to do |format|
          format.html { redirect_back :fallback_location => root_path, notice: 'Reply was successfully destroyed.' }
          format.json { head :no_content }
        end
      end


      private

      def reply_params
        params.require(:reply).permit(:text)
      end

      def find_commentable
        @commentable = Reply.find_by_id(params[:reply_id]) if params[:comment_id]
        @commentable = Post.find_by_id(params[:post_id]) if params[:post_id]
      end


end
