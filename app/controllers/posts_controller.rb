class PostsController < ApplicationController
    def new
        @visitor = Visitor.find(params[:visitor_id])
        @post = Post.new
      end

    def create 
        puts params
        visitor = Visitor.find(params[:post][:visitor_id])
        Post.create(params.require(:post).permit(:TalentName, :TalentDescription, :visitor_id))
        redirect_to visitor
     end

     def destroy
        Post.find(params[:id]).destroy
        redirect_to visitors_path
    end 


end
