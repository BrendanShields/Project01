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
          redirect_back :fallback_location => root_path, notice: 'Your comment was successfully posted!'
        else
          redirect_back :fallback_location => root_path, notice:  "Your comment wasn't posted!"
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
